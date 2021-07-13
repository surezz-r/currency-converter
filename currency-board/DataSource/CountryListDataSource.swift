//
//  CountryListDataSource.swift
//  currency-board
//

import UIKit

protocol CountryListDelegate: AnyObject {
    func didSelectCountry(_ country: CountryListModel)
}

class CountryListDataSource: TableViewBaseDataSource {
    
    //Identifiers
    private let CurrencyListCellIdentifier = "CurrencyListCellIdentifier"
    
    //Delegate
    weak var delegate: CountryListDelegate!
    
    //Model
    var countryListModel: [CountryListModel]?
    
    override init(_ tableView: UITableView) {
        super.init(tableView)
    }
    
    //MARK:- <UITableView DataSource>
    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.countryListModel?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CurrencyListCellIdentifier) as! CurrencyListCell
        guard let country = self.countryListModel?[indexPath.row] else { return UITableViewCell() }
        cell.populateData(country)
        
        return cell
    }
    
    //MARK:- <UITableView Delegates>
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let item = self.countryListModel?[indexPath.row] else { return }
        self.delegate.didSelectCountry(item)
    }
}
