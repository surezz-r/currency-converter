//
//  URLConstants.swift
//  currency-board
//

import Foundation

struct APPURL {
    
    static let AccessKey = "45c0eabd2ba916ac1342c0f8a4af8a4c" // Keeping static, It should be handled if fetching from Backend
    
    private struct Domains {
        static let Dev = "http://api.currencylayer.com"
        
        // ** This is just a name sake url string - should be changed **//
        static let PROD = "https://test-PROD.com"
        static let UAT = "https://test-UAT.com"
        static let Local = "192.145.1.1"
        static let QA = "testAddress.qa.com"
    }
    
    private struct APIs {
        static let CurrencyLive = "/live"
        static let CurrencyList = "/list"
    }
    
    static let BaseURL = Domains.Dev //We Can change the URL type
    static let DevBaseURL = Domains.Local
    
    static let CurrencyLiveAPI = APIs.CurrencyLive
    static let CurrencyListAPI = APIs.CurrencyList
    
    static let Query = URLQueryItem(name: "access_key", value: AccessKey)
}
