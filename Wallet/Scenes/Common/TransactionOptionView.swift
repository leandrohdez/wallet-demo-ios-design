//
//  TransactionOptionView.swift
//  Wallet
//
//  Created by Leandro Hernandez on 22/2/22.
//

import SwiftUI

struct TransactionOptionView: View {
    
    var title: String = ""
    
    var subtitle: String = ""
    
    var iconName: String = "command"
    
    var action: (() -> Void)?
    
    var body: some View {
        ZStack {
            Color.ui.independence
            Button(action: {
                self.action?()
            }) {
                HStack(alignment: .center, spacing: 12) {
                    HStack(alignment: .center, spacing: 12) {
                        Image(systemName: self.iconName)
                            .font(.system(size: 24))
                            .foregroundColor(Color.gray)
                        Text(self.title)
                            .font(.system(size: 17).weight(.regular))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                        Spacer()
                        Text(self.subtitle)
                            .font(.system(size: 15).weight(.regular))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray.opacity(0.5))
                    }
                    HStack(alignment: .center, spacing: 12) {
                        Spacer()
                            .frame(width: 1, height: 40)
                            .background(Color.gray)
                        Image(systemName: "arrow.forward")
                            .foregroundColor(Color.ui.white)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 16)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 56)
        .cornerRadius(18)
    }
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionOptionView()
    }
}
