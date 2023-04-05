//
//  CoinModel.swift
//  MarketCoins
//
//  Created by Marcel Leite de Farias on 05/04/23.
//

import Foundation

struct CoinModel: Codable {
    let id: String // id
    let symbol: String // simbolo
    let name: String // nome
    let image: String // imagem
    let currentPrice: Double? // preço
    let marketCap: Double? // capitalização de mercado
    let marketCapRank: Int? // rank
    let fullyDilutedValuation: Double? // avaliação total da divida
    let totalVolume: Double? // volume de negócios
    let high24H: Double? // alta de 24 h
    let low24H: Double? // baixa de 24 h
    let priceChange24H: Double? // mudança de preço 24h
    let priceChangePercentage24H: Double? // percentual 24h
    let marketCapChange24H: Double? // mudança de valor de mercado 24h
    let marketCapChangePercentage24H: Double? // percentual de alteração do valor de mercado 24h
    let circulatingSupply : Double // fornecimento disponível
    let totalSupply: Double? // fornecimento total
    let maxSupply: Double? // suprimento maximo
    let ath: Double // valor máximo
    let athChangePercentage: Double // valor máximo
    let athDate: String // valor máximo
    let atl: Double // valor minimo
    let atlChangePercentage: Double // valor minimo
    let atlDate: String // valor minimo
    let lastUpdated: String // ultima atualização
    let priceChangePercentage1H: Double? // percentual 1h
    let priceChangePercentage7D: Double? // percentual 7d
    let priceChangePercentage30D: Double? // percentual 30d
    enum CodingKeys: String, CodingKey {
        case id
        case symbol
        case name
        case image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case priceChangePercentage1H = "price_change_percentage_1h_in_currency"
        case priceChangePercentage7D = "price_change_percentage_7d_in_currency"
        case priceChangePercentage30D = "price_change_percentage_30d_in_currency"
    }
}
