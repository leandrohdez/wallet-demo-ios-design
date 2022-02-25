//
//  CustomSegmentedControl.swift
//  Wallet
//
//  Created by Leandro Hernandez on 22/2/22.
//

import SwiftUI

struct CustomSegmentedControl: View {
    
    //------------------------------------
    // MARK: Properties
    //------------------------------------
    // # Public/Internal/Open
    @Binding public var selection: Int
    
    // # Private/Fileprivate
    // The width and the height of the segmented control
    private let size: CGSize
    
    // An array of Strings to display on the segments
    private let segmentLabels: [String]
    
    // The padding of the selection background
    private let segmentPadding: CGFloat = 3
    
    // # Body
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            // # Background shape
            RoundedRectangle(cornerRadius: 10)
                .frame(width: size.width, height: size.height)
                .foregroundColor(Color.black)
                .opacity(0.2)
            
            // # Dividers
            HStack(spacing: 0) {
                
                ForEach(0..<segmentLabels.count) { idx in
                    
                    if idx < (segmentLabels.count - 1) {
                        customDivider(offset: (segmentWidth(size) - 0.5) * CGFloat(idx + 1), opacity: idx == selection - 1 || idx == selection ? 0.0 : 1.0)
                    }
                }
            }
//            .animation(.easeOut, value: 0.2)
            .animation(Animation.easeOut(duration: 0.2))
            
            // # Selection background
            RoundedRectangle(cornerRadius: 10)
                .frame(width: segmentWidth(size) - (segmentPadding * 2), height: size.height - (segmentPadding * 2))
                .foregroundColor(Color.ui.independence)
                .offset(x: calculateSegmentOffset(size) + segmentPadding)
//                .animation(.easeInOut, value: 0.2)
                .animation(Animation.easeInOut(duration: 0.2))
            
            // # Labels
            HStack(spacing: 0) {
                ForEach(0..<segmentLabels.count) { idx in
                    SegmentLabel(title: segmentLabels[idx], width: segmentWidth(size), textColour: selection == idx ? Color.white : Color.gray)
                        .onTapGesture {
                            selection = idx
                        }
                }
            }
        }
    }
    
    //=======================================
    // MARK: Public Methods
    //=======================================
    /// Creates a `CustomSegmentedControl` that shows the `segmentLabels`.
    /// - Parameters:
    ///   - selection: A binding to a property that determines the currently selected option.
    ///   - size: The width and the height of the segmented control
    ///   - segmentLabels: An array of Strings to display on the segments
    public init(selection: Binding<Int>, size: CGSize, segmentLabels: [String]) {
        self._selection = selection
        self.size = size
        self.segmentLabels = segmentLabels
    }
    
    //=======================================
    // MARK: Private Methods
    //=======================================
    /// Calculates the width of a segment
    private func segmentWidth(_ mainSize: CGSize) -> CGFloat {
        var width = (mainSize.width / CGFloat(segmentLabels.count))
        if width < 0 {
            width = 0
        }
        return width
    }
    
    /// Calculates the offset of a segment
    private func calculateSegmentOffset(_ mainSize: CGSize) -> CGFloat {
        segmentWidth(mainSize) * CGFloat(selection)
    }
    
    /// Creates a Divider for placing between two segments
    private func customDivider(offset: CGFloat, opacity: Double) -> some View {
        Divider()
            .background(Color.black)
            .frame(height: size.height * 0.5) // The height of the divider
            .offset(x: offset)
            .opacity(opacity)
    }
}


//=======================================
// MARK: Subviews
//=======================================
fileprivate struct SegmentLabel: View {
    
    //------------------------------------
    // MARK: Properties
    //------------------------------------
    // # Public/Internal/Open
    let title: String
    let width: CGFloat
    let textColour: Color
    
    // # Private/Fileprivate
    
    // # Body
    var body: some View {
        
        Text(title)
            .font(.system(size: 15))
            .multilineTextAlignment(.center)
            .fixedSize(horizontal: false, vertical: false)
            .foregroundColor(textColour)
            .frame(width: width)
            .contentShape(Rectangle()) // without this, only the text is tappable, not the whole segment
    }
}
