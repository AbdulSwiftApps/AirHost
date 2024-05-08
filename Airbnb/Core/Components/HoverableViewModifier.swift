//
//  HoverableViewModifier.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/7/24.
//

import SwiftUI

struct HoverableViewModifier: View {
    @State private var isHovered = false
    
    func body(content: Content) -> some View {
        content
            .onHover { hovering in
                self.isHovered = hovering
            }
            .cursor(isHovered ? .pointingHand : .arrow)
    }
}

#Preview {
    HoverableViewModifier()
}
