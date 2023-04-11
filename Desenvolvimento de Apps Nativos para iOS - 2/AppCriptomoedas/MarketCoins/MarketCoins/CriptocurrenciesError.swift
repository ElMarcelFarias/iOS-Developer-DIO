//
//  CriptocurrenciesError.swift
//  MarketCoins
//
//  Created by Marcel Leite de Farias on 11/04/23.
//

import Foundation

enum CryptocurrenciesError: Error {
    case internalServerError
    case badRequestError
    case notFoundError
    case undefinedError
    
    var errorDescription: String {
        switch self {
        case .internalServerError:
            return "Ocorreu um erro no servidor. Tente novamente mais tarde!"
        case .badRequestError:
            return "Sua requisição não foi bem sucedida!"
        case .notFoundError:
            return "O serviço que você está buscando não existe!"
        case .undefinedError:
            return "Ocorreu um erro. Tente novamente mais tarde!"
        }
    }
}
