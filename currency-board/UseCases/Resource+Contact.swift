//
//  Resource+Contact.swift
//  currency-board
//

import Foundation

extension Resource {
    
    static func live() -> Resource<CurrencyValueBaseModel> {
        let url = URL(string: APPURL.BaseURL)!.appendingPathComponent(APPURL.CurrencyLiveAPI)
        return Resource<CurrencyValueBaseModel>(url: url, parameters: ["access_key": APPURL.AccessKey], headers: ["Content-Type" : "application/json; charset=utf-8"], methodType: .GET)
    }
    
    static func list() -> Resource<CurrencyNameBaseModel> {
        let url = URL(string: APPURL.BaseURL)!.appendingPathComponent(APPURL.CurrencyListAPI)
        return Resource<CurrencyNameBaseModel>(url: url, parameters: ["access_key": APPURL.AccessKey], headers: ["Content-Type" : "application/json; charset=utf-8"], methodType: .GET)
    }
}
