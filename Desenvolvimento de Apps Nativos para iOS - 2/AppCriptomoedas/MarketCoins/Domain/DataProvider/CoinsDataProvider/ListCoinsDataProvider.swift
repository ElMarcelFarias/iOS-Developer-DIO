//
//  ListCoinsDataProvider.swift
//  MarketCoins
//
//  Created by Marcel Leite de Farias on 10/04/23.
//

import Foundation

protocol ListCoinsDataProviderDelegate: GenericDataProviderDelegate {}

class ListCoinsDataProvider: DataProviderManager<ListCoinsDataProviderDelegate, [CoinModel]> {
    
    private let coinsStore: CoinsStoreProtocol?
    
    init(coinsStore: CoinsStoreProtocol = CoinsStore()) {
        self.coinsStore = coinsStore
    }
    
    func fetchListCoins(by vsCurrency: String,
                        with crytocurrency: [String]?,
                        orderBy order: String,
                        total parPage: Int,
                        page: Int,
                        percentagePrice: String) {
        
        coinsStore?.fetchLisCoins(by: vsCurrency,
                                  with: crytocurrency,
                                  orderBy: order,
                                  total: parPage,
                                  page: page,
                                  percentagePrice: percentagePrice,
                                  completion: { result, error in
            
            if let error = error {
                self.delegate?.errorData(self.delegate, error: error)
            }
            
            if let result = result{
                self.delegate?.success(model: result)
            }
        })
    }
    
}
