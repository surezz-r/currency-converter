//
//  CountryStubFetcher.swift
//  currency-boardTests
//

import UIKit

class CountryStubFetcher: NSObject {
    
    class func fetchCurrencyLiveStub() -> [String: Any] {
        var liveData: [String: Any]!
        let filePath: String! = Bundle.main.path(forResource: "country-live", ofType: "json")
        let jsonData: Data! = FileManager.default.contents(atPath: filePath)
        let json = try! JSONSerialization.jsonObject(with: jsonData, options: .mutableLeaves) //Not handling throw here since data is definitely parseable
        liveData = json as? [String: Any]
        
        return liveData
    }
    
    class func fetchCurrencyListStub() -> [String: Any] {
        var listData: [String: Any]!
        let filePath: String! = Bundle.main.path(forResource: "country-list", ofType: "json")
        let jsonData: Data! = FileManager.default.contents(atPath: filePath)
        let json = try! JSONSerialization.jsonObject(with: jsonData, options: .mutableLeaves) //Not handling throw here since data is definitely parseable
        listData = json as? [String: Any]
        
        return listData
    }
    
}
