//
//  CoinsTodayView.swift
//  Wallet
//
//  Created by Leandro Hernandez on 23/2/22.
//

import SwiftUI

struct CoinsTodayView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Spacer().frame(width: 16)
                    CoinTodayView(title: "BTC: 29%", color: .orange)
                    CoinTodayView(title: "ETH: 24%", color: .cyan)
                    CoinTodayView(title: "ADA: 16%", color: .yellow)
                    CoinTodayView(title: "LTC: 21%", color: .purple)
                    CoinTodayView(title: "XRP: 12%", color: .pink)
                    CoinTodayView(title: "SOL: 5%", color: .blue)
                    CoinTodayView(title: "DOT: 9%", color: .white)
                    Spacer().frame(width: 16)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 0)
    }
}

struct CoinsTodayView_Previews: PreviewProvider {
    static var previews: some View {
        CoinsTodayView()
    }
}
