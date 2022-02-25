//
//  TabBar.swift
//  Wallet
//
//  Created by Leandro Hernandez on 22/2/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack {
            Color.clear
                .background(.ultraThinMaterial)
                .foregroundStyle(.ultraThickMaterial)
                .cornerRadius(40)
                .edgesIgnoringSafeArea(.bottom)
                
            ZStack {
                
                HStack(alignment: .center) {
                    
                    Circle()
                        .fill(Color.clear)
                        .frame(width: 48, height: 48, alignment: .center)
                        .blur(radius: 3)
                    Spacer()
                    
                    Circle()
                        .fill(Color.ui.red.opacity(0.8))
                        .frame(width: 48, height: 48, alignment: .center)
                        .blur(radius: 48)
                    Spacer()
                    Spacer().frame(width: 72, height: 48)
                    Spacer()
                    Circle()
                        .fill(Color.clear)
                        .frame(width: 48, height: 48, alignment: .center)
                        .blur(radius: 3)
                    Spacer()
                    Circle()
                        .fill(Color.clear)
                        .frame(width: 48, height: 48, alignment: .center)
                        .blur(radius: 3)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 24)
                
                HStack(alignment: .center) {
                    
                    VStack {
                        Button {
                            print("Tab 1")
                        } label: {
                            Image(systemName: "number.square")
                                .font(.system(size: 24))
                                .frame(width: 48, height: 48, alignment: .center)
                                .foregroundColor(Color.gray)
                        }
                        .background(Color.clear)
                    }
                    Spacer()
                    Button {
                        print("Tab 2")
                    } label: {
                        Image(systemName: "dollarsign.square")
                            .font(.system(size: 24))
                            .frame(width: 48, height: 48, alignment: .center)
                            .foregroundColor(Color.white)
                    }
                    .background(Color.clear)
                    Spacer()
                    Spacer().frame(width: 72, height: 48)
                    Spacer()
                    Button {
                        print("Tab 4")
                    } label: {
                        Image(systemName: "bookmark.square")
                            .font(.system(size: 24))
                            .frame(width: 48, height: 48, alignment: .center)
                            .foregroundColor(Color.gray)
                    }
                    .background(Color.clear)
                    Spacer()
                    Button {
                        print("Tab 5")
                    } label: {
                        Image(systemName: "person.crop.square")
                            .font(.system(size: 24))
                            .frame(width: 48, height: 48, alignment: .center)
                            .foregroundColor(Color.gray)
                    }
                    .background(Color.clear)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 24)
                .overlay {
                    ZStack {
                        BadgeBackground()
                            .frame(width: 72, height: 72, alignment: .center)
                            .offset(x: 0, y: -24)
                            .overlay {
                                ZStack(alignment: .center) {
                                    Image(systemName: "arrow.up.arrow.down")
                                        .font(.system(size: 17))
                                        .foregroundColor(.white)
                                        .offset(y: -24)
                                }
                                .frame(maxWidth: 72, maxHeight: 72, alignment: .center)
                            }
//                        Button {
//                            print("Tab 3")
//                        } label: {
//                            Image(systemName: "magnifyingglass")
//                                .font(.system(size: 24))
//
//                                .foregroundColor(Color.ui.white)
//                        }
//                        .frame(width: 72, height: 72, alignment: .center)
//                        .background(Color.ui.red)
//                        .cornerRadius(36)
//                        .offset(x: 0, y: -20)
//                        .shadow(color: Color.ui.red.opacity(0.3), radius: 8, x: 0, y: 0)
                    }
                    .frame(height: 72)
                    .frame(maxHeight: .infinity, alignment: .top)
                }
            }
        }
        .frame(height: 70)
        .frame(maxHeight: .infinity, alignment: .bottom)
        .shadow(color: Color.white.opacity(0.1), radius: 3, x: 0, y: -1)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

