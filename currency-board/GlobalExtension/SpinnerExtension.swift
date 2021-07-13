//
//  SpinnerExtension.swift
//  currency-board
//

import Foundation
import UIKit

extension UIViewController {
    
    static let activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    func startLoading() {
        let activityIndicator = UIViewController.activityIndicator
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = .medium
        DispatchQueue.main.async {
            self.view.addSubview(activityIndicator)
        }
        activityIndicator.startAnimating()
    }
    
    func stopLoading() {
        let activityIndicator = UIViewController.activityIndicator
        DispatchQueue.main.async {
            activityIndicator.stopAnimating()
            activityIndicator.removeFromSuperview()
        }
    }
}
