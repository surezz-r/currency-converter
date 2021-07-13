//
//  ServicesProvider.swift
//  ContactsApp
//

import Foundation

class ServiceProvider {
    let network: NetworkServiceType
    
    static func defaultProvider() -> ServiceProvider {
        let network = NetworkService()
        return ServiceProvider(network: network)
    }
    
    init(network: NetworkServiceType) {
        self.network = network
    }
}
