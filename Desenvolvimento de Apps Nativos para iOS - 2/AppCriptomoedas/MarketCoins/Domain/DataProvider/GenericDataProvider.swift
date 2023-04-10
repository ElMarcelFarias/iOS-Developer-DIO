//
//  GenericDataProvider.swift
//  MarketCoins
//
//  Created by Marcel Leite de Farias on 05/04/23.
//

import Foundation

protocol GenericDataProviderDelegate {
    func success(model: Any)
    func errorData(_ provider: GenericDataProviderDelegate?, error: Error)
}

class DataProviderManager<T, S> {
    var delegate: T?
    var model: S?
}
