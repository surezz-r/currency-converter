//
//  UsecaseController.swift
//  currency-board
//

import Foundation
import Combine
import UIKit.UIImage

import Foundation

protocol CurrencyUseCaseType {
    func getCurrencyValue() -> AnyPublisher<Result<CurrencyValueBaseModel, Error>, Never>
    func getCurrencyName() -> AnyPublisher<Result<CurrencyNameBaseModel, Error>, Never>
}

final class CurrencyUseCase: CurrencyUseCaseType {
    
    private let networkService: NetworkServiceType
    
    init(networkService: NetworkServiceType) {
        self.networkService = networkService
    }
    
    /*MARK: - <CurrencyUseCase> - getCurrencyValue()
     * TODO:: This delegate is used for fetching "/live" api.
     */
    func getCurrencyValue() -> AnyPublisher<Result<CurrencyValueBaseModel, Error>, Never> {
        return networkService
            .load(Resource<CurrencyValueBaseModel>.live())
            .map  ({(result: Result<CurrencyValueBaseModel, NetworkError>) -> Result<CurrencyValueBaseModel, Error> in
                switch result{
                case .success(let live): return .success(live)
                case .failure(let error): return .failure(error)
                }
            })
            .subscribe(on: Scheduler.backgroundWorkScheduler)
            .receive(on: Scheduler.mainScheduler)
            .eraseToAnyPublisher()
    }
    
    /*MARK: - <CurrencyUseCase> - getCurrencyName()
     * TODO:: This delegate is used for fetching "/list" api.
     */
    func getCurrencyName() -> AnyPublisher<Result<CurrencyNameBaseModel, Error>, Never> {
        return networkService
            .load(Resource<CurrencyNameBaseModel>.list())
            .map  ({(result: Result<CurrencyNameBaseModel, NetworkError>) -> Result<CurrencyNameBaseModel, Error> in
                switch result{
                case .success(let list): return .success(list)
                case .failure(let error): return .failure(error)
                }
            })
            .subscribe(on: Scheduler.backgroundWorkScheduler)
            .receive(on: Scheduler.mainScheduler)
            .eraseToAnyPublisher()
    }
}
