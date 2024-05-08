//
//  LogicMethods.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/30/24.
//

import Foundation
import SwiftUI

func retrictedCharacterField(text: Binding<String>, maxLength: Int) -> some View {
    TextField("Search destination", text: text)
        .onChange(of: text.wrappedValue, initial: false) {
            if text.wrappedValue.count > maxLength {
                text.wrappedValue = String(text.wrappedValue.prefix(maxLength))
            }
        }
}
