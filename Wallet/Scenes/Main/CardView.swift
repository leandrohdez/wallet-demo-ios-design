//
//  CardView.swift
//  Wallet
//
//  Created by Leandro Hernandez on 22/2/22.
//

import SwiftUI

extension MainView {
    
    struct CardView: View {
        
        var body: some View {
       
            ZStack {
                ZStack {
                    Image("binancelogo")
                        .resizable()
                        .scaledToFit()
                    .frame(width: 150)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(.horizontal, 24)
                .padding(.vertical, 24)
                .opacity(0.7)
                
                ZStack {
                    Image("contactless")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36, height: 36)
                        .tint(.white)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding(.horizontal, 24)
                .padding(.vertical, 24)
                .opacity(0.7)
                
                ZStack {
                    HStack(alignment: .center, spacing: 16) {
                        Text("2321")
                            .font(.system(size: 24).weight(.light))
                            .foregroundColor(.white)
                        Text("6645")
                            .font(.system(size: 24).weight(.light))
                            .foregroundColor(.white)
                        Text("9875")
                            .font(.system(size: 24).weight(.light))
                            .foregroundColor(.white)
                        Text("4828")
                            .font(.system(size: 24).weight(.light))
                            .foregroundColor(.white)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 24)
                .opacity(0.7)
                
                ZStack {
                    HStack(alignment: .center, spacing: 24) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Expira")
                                .font(.system(size: 12).weight(.light))
                                .foregroundColor(.white)
                            Text("05/25")
                                .font(.system(size: 17).weight(.light))
                                .foregroundColor(.white)
                        }
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Code")
                                .font(.system(size: 12).weight(.light))
                                .foregroundColor(.white)
                            Text("***")
                                .font(.system(size: 17).weight(.light))
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack(alignment: .trailing, spacing: 0) {
                            Image("logo-Mastercard")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 76)
                                .opacity(0.8)
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                .padding(.horizontal, 24)
                .padding(.vertical, 24)
                .opacity(0.7)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .frame(height: (UIScreen.main.bounds.width-32) * 0.6235)
            .background(.ultraThinMaterial)
            .foregroundColor(Color.red.opacity(0.35))
            .foregroundStyle(.ultraThickMaterial)
            .cornerRadius(28)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        MainView.CardView()
    }
}
