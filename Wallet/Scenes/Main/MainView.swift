//
//  MainView.swift
//  Wallet
//
//  Created by Leandro Hernandez on 22/2/22.
//

import SwiftUI

struct MainView: View {
    
    @State private var segmentSelection: Int = 0
    
    var body: some View {
        
        ZStack {
            Color.ui.spaceCadet.edgesIgnoringSafeArea(.all)
            
            
            
            VStack {
                
                CustomSegmentedControl(
                    selection: self.$segmentSelection,
                    size: CGSize(width: UIScreen.main.bounds.width - 32, height: 48),
                    segmentLabels: ["My coins", "My card"]
                )
                
                TabView(selection: self.$segmentSelection) {
                    MyCoinsPageView().tag(0)
                    MyCardPageView().tag(1)
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .never))
                .animation(Animation.easeInOut(duration: 1.0), value: 20)
                .transition(.slide)
            }
            .padding(.top, 80)
        }
        .navigationBarHidden(true)
        .preferredColorScheme(.dark)
        .overlay {
            NavigationBar()
            TabBar()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct SegmentedControlViewBackground: ViewModifier {
    
    //------------------------------------
    // MARK: Properties
    //------------------------------------
    // # Public/Internal/Open
    // The size of padding
    let padding: CGFloat
    
    // # Body
    func body(content: Content) -> some View {
        
        content
            .opacity(0.4)
            .cornerRadius(20)
            .padding(padding)
    }
}
