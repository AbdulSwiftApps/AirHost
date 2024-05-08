//
//  LogInButtonView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/2/24.
//

import SwiftUI

struct LogInButtonView: View {
    var body: some View {
        Button {
            print("Log in button clicked")
        } label: {
            Text("Log in")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    LogInButtonView()
}
