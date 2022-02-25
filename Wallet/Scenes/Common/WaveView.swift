//
//  WaveView.swift
//  Wallet
//
//  Created by Leandro Hernandez on 22/2/22.
//

import SwiftUI

struct WaveView: View {
    
    @State private var animateGradient = false
    
    var body: some View {
        
        Canvas  { context, size in
            
            context.fill(
                
                Path() { path in
                    
                    path.move(to: CGPoint(x: 0, y: size.height * 0.4))
                    
                    path.addCurve(
                        to: CGPoint(x: size.width, y: size.height * 0.3),
                        control1: CGPoint(x: size.width * 0.3, y: size.height * 0.4 - 160),
                        control2: CGPoint(x: size.width * 0.5, y: size.height * 0.3 + 110)
                    )
                    
                    path.addLine(to: CGPoint(x: size.width, y: size.height * 0.5))
                    
                    path.addCurve(
                        to: CGPoint(x: 0, y: size.height * 0.66),
                        control1: CGPoint(x: size.width * 0.5, y: size.height * 0.5 - 90),
                        control2: CGPoint(x: size.width * 0.3, y: size.height * 0.66)
                    )
                    
                    path.closeSubpath()
                },
                with: .linearGradient(
                    Gradient(colors: [Color.ui.waveGradient1, Color.ui.waveGradient2, Color.ui.waveGradient3]),
                    startPoint: animateGradient ? CGPoint(x: size.width/3, y: size.height * 0.4) : CGPoint(x: size.width*2/3, y: size.height * 0.6),
                    endPoint: animateGradient ? CGPoint(x: size.width*2/3, y: size.height * 0.6) : CGPoint(x: size.width/3, y: size.height * 0.4)
                )
            )
        }
    }
}
