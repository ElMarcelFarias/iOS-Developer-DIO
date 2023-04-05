//
//  CurrentDataModel.swift
//  MarketCoins
//
//  Created by Marcel Leite de Farias on 05/04/23.
//

import Foundation

struct CurrentDataModel: Codable {
    let id: String
    let symbol: String
    let name: String
    let currentDataDescription: [String: String]
    let marketCapRank: Int?
    let image: ImageModel
    let marketData: MarketDataModel
    let lastUpdated: Date

    enum CodingKeys: String, CodingKey {
        case id
        case symbol
        case name
        case currentDataDescription = "description"
        case marketCapRank = "market_cap_rank"
        case image
        case marketData = "market_data"
        case lastUpdated = "last_updated"
    }
}

// MARK: - ImageModel
struct ImageModel: Codable {
    let thumb: String
    let small: String
    let large: String
}

// MARK: - MarketDataModel
struct MarketDataModel: Codable {
    let currentPrice: [String: Double]
    let marketCap: [String: Double]
    let fullyDilutedValuation: [String: Double]
    let totalVolume: [String: Double]
    let high24h: [String: Double]
    let low24h: [String: Double]
    let priceChangePercentage1HInCurrency: [String: Double]
    let priceChangePercentage24HInCurrency: [String: Double]
    let priceChangePercentage7DInCurrency: [String: Double]
    let priceChangePercentage14DInCurrency: [String: Double]
    let priceChangePercentage30DInCurrency: [String: Double]
    let priceChangePercentage60DInCurrency: [String: Double]
    let priceChangePercentage1yInCurrency: [String: Double]
    let ath: [String: Double]
    let athChangePercentage: [String: Double]
    let athDate: [String: Date]
    let atl: [String: Double]
    let atlChangePercentage: [String: Double]
    let atlDate: [String: Date]
    let totalSupply: Double?
    let maxSupply: Double?
    let circulatingsupply: Double
    
    enum CodingKeys: String, CodingKey {
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24h = "high_24h"
        case low24h = "low_24h"
        case priceChangePercentage1HInCurrency = "price_change_percentage_1h_in_currency"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case priceChangePercentage7DInCurrency = "price_change_percentage_7d_in_currency"
        case priceChangePercentage14DInCurrency = "price_change_percentage_14d_in_currency"
        case priceChangePercentage30DInCurrency = "price_change_percentage_30d_in_currency"
        case priceChangePercentage60DInCurrency = "price_change_percentage_60d_in_currency"
        case priceChangePercentage1yInCurrency = "price_change_percentage_1y_in_currency"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case circulatingsupply = "circulating_supply"
    }
}
