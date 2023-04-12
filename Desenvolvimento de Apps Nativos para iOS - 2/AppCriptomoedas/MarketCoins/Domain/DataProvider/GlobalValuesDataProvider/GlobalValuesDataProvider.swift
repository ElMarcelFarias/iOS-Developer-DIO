//
//  GlobalValuesDataProvider.swift
//  MarketCoins
//
//  Created by Marcel Leite de Farias on 10/04/23.
//

import Foundation

protocol GlobalValuesDataProviderDelegate: GenericDataProviderDelegate {}

class GlobalValuesDataProvider: DataProviderManager<GlobalValuesDataProviderDelegate, GlobalModel> {
    
    private let globalStore: GlobalStoreProtocol?
    
    init(globalStore: GlobalStoreProtocol = GloblaStore()) {
        self.globalStore = globalStore
    }
    
    func fetchGlobalValues() { 
        globalStore?.fetchGlobal(completion: { result, error in
            if let error = error {
                self.delegate?.errorData(self.delegate, error: error)
            }
            
            if let result = result{
                self.delegate?.success(model: result)
            }
        })
    }
    
}
