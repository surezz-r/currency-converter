//
//  CurrencyListViewModel.swift
//  currency-board
//

import Foundation
import UIKit.UIImage

class CurrencyListViewModel {
    
    class func constructViewModel(_ currencyLive: CurrencyValueBaseModel) -> [CountryListModel]? {
        
        let currencyList = CurrencyListViewModel.fetchCurrencyListStub() //Currently rendering from Stub. This should come along with "live" api for better handling
        var currencyListModel = [CountryListModel]()
        
        if let currencies = currencyList["currencies"] as? Dictionary<String, String> {
            if let quotes = (currencyLive.dictionary)?["quotes"] as? Dictionary<String, Any> {
                
                for (_, element) in currencies.enumerated() {
                    let list = CountryListModel()
                    list.countryCode = element.key
                    list.countryName = element.value
                    
                    let currencyKey = Constants.Currency.DisplayCode + element.key
                    let value = quotes[currencyKey] as? Double
                    list.countryCurrencyValue = String(value ?? 0)
                    
                    //Currently reading this image from Local, Hence it should come from api for better handling
                    if let image = UIImage(named: element.key.lowercased()) {
                        list.countryLogo = image
                    } else {
                        list.countryLogo = UIImage(named: "country-avatar")!
                    }
                    currencyListModel.append(list)
                }
                
                currencyListModel = currencyListModel.sorted(by: {$0.countryName?.compare($1.countryName ?? "") == .orderedAscending })
                
                CurrencyDBViewModel.shared.saveCountryInfo(currencyListModel) { (status) in }
            }
            
        }
        return currencyListModel
    }
    
    class func fetchCurrencyListStub() -> [String: Any] {
        var listData: [String: Any]!
        let filePath: String! = Bundle.main.path(forResource: "country-list", ofType: "json")
        let jsonData: Data! = FileManager.default.contents(atPath: filePath)
        let json = try! JSONSerialization.jsonObject(with: jsonData, options: .mutableLeaves) //Not handling throw here since data is definitely parsable
        listData = json as? [String: Any]
        
        return listData
    }
}

extension Encodable {
    var dictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}
