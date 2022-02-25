//
//  OptionsListView.swift
//  Wallet
//
//  Created by Leandro Hernandez on 22/2/22.
//

import SwiftUI

extension MainView {
    
    struct OptionsListView: View {
        
        var body: some View {
            VStack(alignment: .center, spacing: 0) {
                HStack {
                    Text("History")
                        .font(.system(size: 15).bold())
                        .foregroundColor(Color.ui.white)
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("See all")
                            .font(.system(size: 14))
                            .foregroundColor(Color.gray)
                    }
                    .foregroundColor(Color.ui.white)
                    .padding([.vertical, .leading], 16)
                }
                VStack(alignment: .center, spacing: 8) {
                    TransactionOptionView(title: "Deposit", subtitle: "33%", iconName: "arrow.down.app") {
                        
                    }
                    TransactionOptionView(title: "Withdraw", subtitle: "25%", iconName: "arrow.up.forward.app") {
                        
                    }
                    TransactionOptionView(title: "Purchases", subtitle: "19%", iconName: "dollarsign.square") {
                        
                    }
                }
            }
            .padding(.horizontal, 16)
        }
    }
}


struct OptionsListView_Previews: PreviewProvider {
    static var previews: some View {
        MainView.OptionsListView()
    }
}
