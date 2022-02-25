//
//  CoinTodayView.swift
//  Wallet
//
//  Created by Leandro Hernandez on 23/2/22.
//

import SwiftUI

struct CoinTodayView: View {
    
    var title: String
    
    var color: Color = .white
    
    var body: some View {
        HStack {
            HStack {
                Circle()
                    .strokeBorder(.orange.opacity(0.3), lineWidth: 1)
                    .frame(width: 16, height: 16)
                    .foregroundColor(.clear)
                    .overlay {
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(self.color)
                            .shadow(color: self.color, radius: 6, x: 0, y: 0)
                    }
                    
                Text(self.title)
                    .font(.system(size: 15))
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
        }
        .background(Color.ui.independence)
        .cornerRadius(16)
    }
}
