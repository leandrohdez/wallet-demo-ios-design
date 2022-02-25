//
//  PieView.swift
//  Wallet
//
//  Created by Leandro Hernandez on 23/2/22.
//

import SwiftUI

struct PieView: View {
    var body: some View {
        ZStack {
            HStack {
                Spacer()
            }
            .frame(height: 80)
            .background(Color.ui.independence)
            
            Circle()
                .fill(Color.ui.spaceCadet)
                .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.width)
                .blur(radius: 30)
            
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.up.right")
                        .font(.system(size: 19))
                        .foregroundColor(Color.ui.white)
                }
                .padding(.leading, 8)

                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.down.left")
                        .font(.system(size: 19))
                        .foregroundColor(Color.ui.white)
                }
                .padding(.trailing, 8)
            }
            
            Image("hand-draw-circle")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.width * 0.85)
                .opacity(0.9)
                .rotationEffect(.degrees(200))
                .overlay {
                    ZStack {
                        ArcItem(from: -85, to: 35)
                            .stroke(.orange, lineWidth: 2)
                            .shadow(color: .orange, radius: 2, x: 0, y: 0)
                        ArcItem(from: 40, to: 95)
                            .stroke(.cyan, lineWidth: 2)
                            .shadow(color: .cyan, radius: 2, x: 0, y: 0)
                        ArcItem(from: 100, to: 160)
                            .stroke(.yellow, lineWidth: 2)
                            .shadow(color: .yellow, radius: 2, x: 0, y: 0)
                        ArcItem(from: 165, to: 210)
                            .stroke(.purple, lineWidth: 2)
                            .shadow(color: .purple, radius: 2, x: 0, y: 0)
                        ArcItem(from: 215, to: 245)
                            .stroke(.pink, lineWidth: 2)
                            .shadow(color: .pink, radius: 2, x: 0, y: 0)
                        ArcItem(from: 250, to: 260)
                            .stroke(.blue, lineWidth: 2)
                            .shadow(color: .blue, radius: 2, x: 0, y: 0)
                        ArcItem(from: 265, to: 270)
                            .stroke(.white, lineWidth: 2)
                            .shadow(color: .white, radius: 2, x: 0, y: 0)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.65, height: UIScreen.main.bounds.width * 0.65)
                }
            
            VStack(alignment: .center, spacing: 8) {
                Image(systemName: "eye.circle")
                    .font(.system(size: 19))
                    .foregroundColor(Color.gray)
                Text("Total balance")
                    .foregroundColor(Color.gray)
                Text("$126227,95")
                    .font(.system(size: 28))
                    .foregroundColor(Color.ui.white)
                Text("BTC: 1,99910932")
                    .font(.system(size: 14))
                    .foregroundColor(Color.gray)
            }
            .offset(y: -12)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .frame(height: UIScreen.main.bounds.width * 0.85)
    }
}

struct PieView_Previews: PreviewProvider {
    static var previews: some View {
        PieView()
    }
}


struct ArcItem : Shape {
    
    var from: CGFloat
    
    var to: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var p = Path()
        
        let radius = rect.maxX - rect.midX
        let center = CGPoint(x: rect.midX, y:rect.midY)

        p.addArc(center: center, radius: radius, startAngle: .degrees(self.from), endAngle: .degrees(self.to), clockwise: false)
        
        return p.strokedPath(.init(lineCap: .round))
    }
}
