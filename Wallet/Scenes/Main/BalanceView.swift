//
//  BalanceView.swift
//  Wallet
//
//  Created by Leandro Hernandez on 22/2/22.
//

import SwiftUI

extension MainView {
    
    struct BalanceView: View {
        
        var body: some View {
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("$ 64,923.45")
                            .font(.system(size: 24).weight(.bold))
                            .foregroundColor(Color.ui.white)
                        Text("BTC = 1.232323")
                            .font(.system(size: 14))
                            .foregroundColor(Color.ui.white.opacity(0.5))
                    }
                    Spacer()
                    HStack(alignment: .center, spacing: 8) {
                        Button {
                            
                        } label: {
                            Image(systemName: "point.3.connected.trianglepath.dotted")
                                .foregroundColor(Color.gray)
                        }
                        .frame(width: 40, height: 40)
                        .background(Color.ui.spaceCadetDark)
                        .cornerRadius(16)
                        .shadow(color: Color.black.opacity(0.2), radius: 1, x: 0, y: 1)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(Color.gray)
                        }
                        .frame(width: 40, height: 40)
                        .background(Color.ui.spaceCadetDark)
                        .cornerRadius(16)
                        .shadow(color: Color.black.opacity(0.2), radius: 1, x: 0, y: 1)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
        }
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        MainView.BalanceView()
    }
}
