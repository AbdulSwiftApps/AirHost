//
//  LogInOptionView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/2/24.
//

import SwiftUI

struct LogInOptionView: View {
    let name: String
    let logo: String

    var body: some View {
        VStack {
            HStack {
                Image(systemName: logo)

                Text(name)
                    .font(.subheadline)

                Spacer()

                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    LogInOptionView(name: "Setting", logo: "gear")
}
