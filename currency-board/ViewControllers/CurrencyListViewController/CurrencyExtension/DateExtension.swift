//
//  DateExtension.swift
//  currency-board
//

import Foundation
import UIKit

//MARK:- <Date>
extension Date {
    
    func offsetFrom(date: Date) -> Int {
        let diff = Int(Date().timeIntervalSince1970 - date.timeIntervalSince1970)
        let hours = diff / 3600
        let minutes = (diff - hours * 3600) / 60
        return minutes
    }
}
