//
//  MyCoinsPageView.swift
//  Wallet
//
//  Created by Leandro Hernandez on 23/2/22.
//

import SwiftUI

struct MyCoinsPageView: View {
    var body: some View {
        
        ZStack {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .center, spacing: 0) {

                    CoinsTodayView()
                        .padding(.bottom, 16)

                    PieView()
                    
                    MainView.OptionsListView()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .padding(.top, 16)
                .padding(.bottom, 120)
            }
        }
    }
}

struct MyCoinsPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyCoinsPageView()
    }
}
