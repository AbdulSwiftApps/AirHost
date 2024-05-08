//
//  ListingDetailBackButtonView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/25/24.
//

import SwiftUI

struct ListingDetailBackButtonView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "chevron.left")
                .foregroundStyle(.black)
                .background {
                    Circle()
                        .fill(.white)
                        .frame(width: 32, height: 32)
                }
                .padding(32)
        })
    }
}

#Preview {
    ListingDetailBackButtonView()
}
