//
//  MyCardPageView.swift
//  Wallet
//
//  Created by Leandro Hernandez on 23/2/22.
//

import SwiftUI

struct MyCardPageView: View {
    
    var body: some View {
        
        ZStack {
            
            WaveView().offset(y: -72)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .center, spacing: 16) {

                    MainView.BalanceView()

                    MainView.CardView()

                    MainView.OptionsListView()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .padding(.top, 16)
                .padding(.bottom, 120)
            }
        }
    }
}
