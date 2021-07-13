//
//  Alert.swift
//  currency-board
//

import UIKit

extension UIViewController {
    
    typealias Completion = ()->()
    
    func showAlert(title: String = "", message: String = "", buttonOneTitle: String? = nil, buttonTwoTitle: String? = nil, okAction: Completion? = nil, otherAction: Completion? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        if let buttonTitle = buttonOneTitle {
            alert.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: { ( _: UIAlertAction) -> Void in
                okAction?()
            }))
        }
        if let buttonTitle = buttonTwoTitle {
            alert.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: { ( _: UIAlertAction) -> Void in
                otherAction?()
            }))
        }
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
        }
    }
}
