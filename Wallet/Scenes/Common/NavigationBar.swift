//
//  NavigationBar.swift
//  Wallet
//
//  Created by Leandro Hernandez on 22/2/22.
//

import SwiftUI

struct NavigationBar: View {
    
    var body: some View {
        ZStack {
            Color.clear
                .background(Color.ui.spaceCadet)
            HStack(alignment: .center) {
                HStack(alignment: .center, spacing: 8) {
                    Button {
                        
                    } label: {
                        Image(systemName: "qrcode.viewfinder")
                            .font(.system(size: 19))
                            .foregroundColor(Color.ui.white)
                    }
                    .frame(width: 44, height: 44, alignment: .center)
                    .background(LinearGradient(colors: [Color.ui.spaceCadetDark, Color.ui.independence], startPoint: .top, endPoint: .bottom))
                    .cornerRadius(18)
                    .padding(.leading, 12)
                    .shadow(color: Color.black.opacity(0.2), radius: 1, x: 0, y: 1)
                    
                    Spacer()
                    
                    Text("My Wallet")
                        .font(.system(size: 17).weight(.bold))
                        .foregroundColor(Color.ui.white)
                    
                    Spacer()
                    
                    ZStack {
                        Button {
                            
                        } label: {
                            Image(systemName: "bell")
                                .font(.system(size: 19))
                                .foregroundColor(Color.ui.white)
                        }
                        .frame(width: 44, height: 44, alignment: .center)
                        .background(LinearGradient(colors: [Color.ui.spaceCadetDark, Color.ui.independence], startPoint: .top, endPoint: .bottom))
                        .cornerRadius(18)
                        .padding(.trailing, 12)
                        .shadow(color: Color.black.opacity(0.2), radius: 1, x: 0, y: 1)
                        
                        ZStack(alignment: .leading) {
                            Text("17")
                                .font(.system(size: 12).bold())
                                .foregroundColor(.white)
                        }
                        .frame(width: 16, height: 16)
                        .background(Color.ui.red)
                        .cornerRadius(4)
                        .shadow(color: Color.ui.red, radius: 5, x: 0, y: 0)
                        .offset(x: -6, y: 22)
                    }
                }
            }
        }
        .frame(height: 70)
        .frame(maxHeight: .infinity, alignment: .top)
    }
    
}
