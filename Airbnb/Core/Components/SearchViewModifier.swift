//
//  SearchViewModifier.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/30/24.
//

import SwiftUI

struct SearchViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding()
            .shadow(radius: 10)
    }
}
