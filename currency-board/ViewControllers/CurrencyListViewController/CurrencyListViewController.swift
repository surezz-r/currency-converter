//
//  CurrencyListViewController.swift
//  currency-board
//

import UIKit
import Foundation
import Combine

class CurrencyListViewController: BaseViewController, CountryListDelegate, UIToolbarDelegate {
    
    //Segue Identifiers
    private let CountryDetailSegueIdentifier = "CountryDetailSegueIdentifier"
    
    //Constants
    private let kCurrentTimeStamp = "kCurrentTimeStamp"
    private let kTimeExceed = 30 //Configurable
    
    //Outlets
    @IBOutlet weak var countryButton: UIButton!
    @IBOutlet weak var currencyTextField: UITextField!
    @IBOutlet weak var convertCurrencyButton: UIButton!
    @IBOutlet weak var countryFlag: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    //Properties
    var countryListDS: CountryListDataSource?
    var pickerContainer: UIView?
    var selectedCountry: CountryListModel?
    var countryListData: [CountryListModel]?
    
    var subscriptions = Set<AnyCancellable>()
    private let viewModel: CurrencyListViewModel = CurrencyListViewModel()
    
    let networkService = NetworkService()
    lazy var currencyController: CurrencyUseCase = {
        return CurrencyUseCase(networkService: networkService)
    }()
    
    //MARK:- NavigationProtocol
    override var navTitle: String {
        return Constants.Screen.Title
    }
    
    //MARK:- <ViewController Lifecycle delegates>
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTableView()
        self.setupGesture()
        self.shouldFetchDataFromDB()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationItem.hidesSearchBarWhenScrolling = true
    }
    
    //MARK:- <Setup TableView>
    private func setupTableView() {
        if self.countryListDS == nil {
            self.countryListDS = CountryListDataSource(self.tableView)
            self.countryListDS?.delegate = self
        }
        self.tableView.delegate = self.countryListDS
        self.tableView.dataSource = self.countryListDS
        self.searchBar.delegate = self
    }
    
    /* Validate timestamp wheather make api or fetch from DB
     * return -
     */
    func shouldFetchDataFromDB() {
        guard let timeStamp = UserDefaults.standard.object(forKey: kCurrentTimeStamp) as? Date, Date().offsetFrom(date: timeStamp) <= kTimeExceed else {
            self.fetchCountryList()
            return
        }
        self.readCountryList()
    }
    
    //MARK: - Read Stored Currency list from DB
    func readCountryList() {
        let countryList = CurrencyDBViewModel.shared.fetchCountryInfo()
        if countryList.count > 0 {
            self.countryListDS?.countryListModel = countryList
            self.countryListData = countryList
            self.selectedCountry = countryList.filter({
                return $0.countryCode == Constants.Currency.DisplayCode }).first
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        } else {
            self.fetchCountryList()
        }
    }
    
    /* Perform reload actions
     * @param - [CountryListModel]
     * return -
     */
    
    func reloadCurrencyData(_ countryList: [CountryListModel]) {
        self.countryListData = countryList //Search Filter data
        self.countryListDS?.countryListModel = countryList
        self.dismissKeyboard()
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    /* Fetching data
     * @param -
     * @descrition - Fetching data from generic delegate using Combine framework and reloading the model
     * return -
     */
    func fetchCountryList() {
        self.startLoading()
        currencyController.getCurrencyValue()
            .sink(receiveCompletion: { (completion) in
                self.stopLoading()
                switch completion {
                case let .failure(error):
                    print("Couldn't get currency value: \(error)")
                    return
                case .finished:
                    break
                }
            }) { [unowned self] state in
                switch state {
                case .success( let liveObject):
                    UserDefaults.standard.set(Date(), forKey: kCurrentTimeStamp)
                    self.configureDataModel(liveObject)
                    break
                case .failure(let error):
                    self.handleNetworkError(error)
                    break
                }
            }
            .store(in: &subscriptions)
    }
    
    func configureDataModel(_ live: CurrencyValueBaseModel) {
        if let listModel = CurrencyListViewModel.constructViewModel(live), listModel.count > 0 {
            self.selectedCountry = listModel.filter({
                return $0.countryCode == Constants.Currency.DisplayCode }).first
            self.reloadCurrencyData(listModel)
        }
    }
    
    //MARK:- <Handle Network error>
    func handleNetworkError(_ error: Any) {
        
        switch error as? NetworkErrorHandler {
        
        case .internetFailed:
            showAlert(title: Constants.Error.NetworkErrorTitle,
                      message: Constants.Error.NoInternet, buttonOneTitle: Constants.Button.OKButton)
            return
            
        case .didNotReceiveData:
            showAlert(title: Constants.Error.NetworkErrorTitle,
                      message: Constants.Error.DataNotFound, buttonOneTitle: Constants.Button.OKButton)
            return
            
        case .couldNotCreateURL:
            showAlert(title: Constants.Error.NetworkErrorTitle,
                      message: Constants.Error.URLInvalid, buttonOneTitle: Constants.Button.OKButton)
            return
            
        case .none:
            showAlert(title: Constants.Error.NetworkErrorTitle,
                      message: Constants.Error.UnknownError, buttonOneTitle: Constants.Button.OKButton)
            return
        }
    }
    
    @IBAction func performCountryTapAction(_ sender: Any) {
        self.setupPickerView()
    }
    
    //MARK:- Perform Button Actions
    @IBAction func performConvertCurrencyAction(_ sender: Any) {
        let countryList = CurrencyDBViewModel.shared.fetchCountryInfo()
        self.searchBar.resignFirstResponder()
        self.searchBar.text = ""
        if let selectedCurrency = self.selectedCountry?.countryCurrencyValue {
            let currentCurrency = selectedCurrency.floatValue
            if let enteredCurrency = self.currencyTextField.text, enteredCurrency.count > 0 {
                let enteredCurrency = enteredCurrency.floatValue
                let usdValue = enteredCurrency/currentCurrency
                self.reloadCurrencyData(self.handleCurrencyConvertion(usdValue, countryList))
            }
        }
    }
    
    func handleCurrencyConvertion( _ usdValue: Float, _ countryList: [CountryListModel]) -> [CountryListModel] {
        var updateCountries = [CountryListModel]()
        for country in countryList {
            let updateCountry = CountryListModel()
            if let currenyValue = country.countryCurrencyValue {
                updateCountry.countryCurrencyValue = String(currenyValue.floatValue * usdValue)
            }
            updateCountry.countryName = country.countryName
            updateCountry.countryCode = country.countryCode
            updateCountry.countryLogo = country.countryLogo
            updateCountries.append(updateCountry)
        }
        return updateCountries
    }
    
    /*MARK: - <CurrencyListDelegate>
     *  Further Enhansements
     *  eg - Show Country/Currency/Stock details
     */
    
    func didSelectCountry(_ selectedCountry: CountryListModel) {
        DispatchQueue.main.async { [weak self] in
            if let strongSelf = self {
                strongSelf.performSegue(withIdentifier: strongSelf.CountryDetailSegueIdentifier, sender: strongSelf)
            }
        }
    }
    
    //MARK:- <HelperDelegates>
    private func setupGesture() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        if let container = self.pickerContainer {
            container.removeFromSuperview()
        }
        self.view.endEditing(true)
    }
    
}
