//
//  StringConstants.swift
//  currency-board
//
//

import Foundation

struct Constants {
    
    struct Screen {
        static let Title = "Currency Converter"
    }
    
    struct Button {
        static let BarButtonName = "Done"
        static let OKButton = "OK"
    }
    
    struct Currency {
        static let DisplayCode = "USD"
        static let CharacterSet = "0123456789."
    }
    
    struct Error {
        static let NetworkErrorTitle = "Network Error"
        static let NetworkErrorDescription = "No data found. Please try again!"
        
        static let IncorrectInput = "Incorrect input"
        static let ZeroTextInput = "First number can't be 0"
        
        static let MaxLengthAttempt = "Max Length"
        static let MaxLengthAttemptDescription = "Maximum amount of numbers in the field is 20"
        
        static let EmptyInput = "Please check the text input"
        
        static let DataNotFound = "Data not found!"
        
        static let URLInvalid = "URL is not valid. Please try again."

        static let NoInternet = "Please check your internet connection and try again."
        static let UnknownError = "Unknown error Please and try again later."

    }
    
}
