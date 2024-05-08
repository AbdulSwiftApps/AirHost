//
//  ClearButtonView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/30/24.
//

import SwiftUI

struct ClearButtonView: View {
    @Binding var text: String
    var body: some View {
        Button {
            text = ""
        } label: {
            Text("Clear")
                .foregroundStyle(.black)
                .fontWeight(.semibold)
        }
    }
}

struct ClearButtonView_Previews: PreviewProvider {
    @State static var text = "Cear"

    static var previews: some View {
        ClearButtonView(text: $text)
    }
}
