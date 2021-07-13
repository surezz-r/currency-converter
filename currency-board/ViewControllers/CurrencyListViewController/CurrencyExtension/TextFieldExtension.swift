//
//  TextFieldExtension.swift
//  currency-board
//

import Foundation
import UIKit

//MARK:- <UITextFieldDelegate>
extension CurrencyListViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.currencyTextField.text = textField.text ?? ""
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true;
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if currencyTextField.text?.count == 0 && string == "0" {
            showAlert(title: Constants.Error.IncorrectInput, message: Constants.Error.ZeroTextInput, buttonOneTitle: "OK")
            return false
        }
        
        if ((currencyTextField.text!) + string).count > 20 {
            showAlert(title: Constants.Error.MaxLengthAttempt, message: Constants.Error.MaxLengthAttemptDescription, buttonOneTitle: "OK")
            return false
        }
        
        if (currencyTextField.text?.contains("."))! && string == "." {
            showAlert(title: Constants.Error.IncorrectInput, message: Constants.Error.EmptyInput, buttonOneTitle: "OK")
            return false
        }
        //Only allow numbers. No Copy-Paste text values.
        let allowedCharacterSet = CharacterSet.init(charactersIn: Constants.Currency.CharacterSet)
        let textCharacterSet = CharacterSet.init(charactersIn: currencyTextField.text! + string)
        if !allowedCharacterSet.isSuperset(of: textCharacterSet) {
            return false
        }
        
        return true
    }
    
    //MARK:- <Add DoneButton Accessory View>
    @IBInspectable var doneAccessory: Bool {
        get {
            return self.doneAccessory
        }
        set (hasDone) {
            if hasDone{
                addDoneButtonOnKeyboard()
            }
        }
    }
    
    func addDoneButtonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: Constants.Button.BarButtonName, style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.currencyTextField.inputView = doneToolbar
    }
    
    @objc func doneButtonAction() {
        self.resignFirstResponder()
    }
}
