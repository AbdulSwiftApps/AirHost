//
//  ReserveButtonView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/25/24.
//

import SwiftUI

struct ReserveButtonView: View {
    var body: some View {
        Button(action: {
            // action
            
        }, label: {
            Text("Reserve")
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 140, height: 40)
        })
        .background(.pink)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    ReserveButtonView()
}
