//
//  StringExtension.swift
//  currency-board
//

import Foundation
import UIKit

//MARK:- <String>
extension String {
  
    var floatValue: Float {
        return (self as NSString).floatValue
    }
    
    var currencyFormat: String {
        return String(format: "%.3f", (self as NSString).doubleValue)
    }
    
    func trimWhiteSpace() -> String {
        let string = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return string
    }
}
