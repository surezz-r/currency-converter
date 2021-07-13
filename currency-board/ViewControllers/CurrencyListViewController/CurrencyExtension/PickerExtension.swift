//
//  PickerExtension.swift
//  currency-board
//

import Foundation
import UIKit

//MARK:- <UIPickerView>
extension CurrencyListViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    /* Configure PickerView
     * Handled with container
     * return -
     */
    func setupPickerView() {
        self.view.endEditing(true)
        
        pickerContainer = UIView(frame: CGRect(x: 0, y: self.view.bounds.height - 260, width: self.view.frame.size.width, height: 260))
        
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 44.0))
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = .black
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: Constants.Button.BarButtonName, style: .plain, target: self, action: #selector(self.dismissKeyboard))
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        pickerContainer?.addSubview(toolBar)
        
        let picker = UIPickerView(frame: CGRect(x: 0, y: 44.0, width: self.view.frame.width, height: 216.0))
        pickerContainer?.addSubview(picker)
        picker.backgroundColor = .white
        picker.dataSource = self
        picker.delegate = self
        toolBar.delegate = self
        
        self.view.addSubview(pickerContainer!)
        DispatchQueue.main.async {
            picker.reloadAllComponents()
            
        }
    }
    
    //MARK:- <UIPickerViewDelegate> <UIPickerViewDataSource>
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.countryListData?.count ?? 0
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let country = self.countryListData?[row]
        return country?.countryName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedCoutry = CurrencyDBViewModel.shared.fetchCountryInfo()[row]
        self.countryButton.setTitle(selectedCoutry.countryCode, for: .normal)
        self.countryFlag.image = selectedCoutry.countryLogo
        self.selectedCountry = selectedCoutry
        self.view.endEditing(true)
    }
}
