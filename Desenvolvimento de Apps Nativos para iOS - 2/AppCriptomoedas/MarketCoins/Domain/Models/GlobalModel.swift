//
//  GlobalModel.swift
//  MarketCoins
//
//  Created by Marcel Leite de Farias on 05/04/23.
//

import Foundation

struct GlobalModel: Codable {
    let data: CryptocurrencyModel
}

// MARK: - CryptocurrencyModel
struct CryptocurrencyModel: Codable {
    let activeCryptocurrencies: Int // criptomoedas ativas
    let upcomingIcos: Int // próximos icos
    let ongoingIcos: Int // icos em andamento
    let endedIcos: Int // terminou icos
    let markets: Int // mercados
    let totalMarketCap: [String: Double] // valor total de mercado por moeda
    let totalVolume: [String: Double] // volume total por moeda
    let marketCapPercentage: [String: Double] // porcentagem de capitalização de mercado por moeda
    let marketCapChangePercentage24HUsd: Double // porcentagem de alteração do valor de mercado 24h em dolar
    let updatedAt: Int // data de atualização em timestemp
    enum CodingKeys: String, CodingKey {
        case activeCryptocurrencies = "active_cryptocurrencies"
        case upcomingIcos = "upcoming_icos"
        case ongoingIcos = "ongoing_icos"
        case endedIcos = "ended_icos"
        case markets
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
        case updatedAt = "updated_at"
    }
}
