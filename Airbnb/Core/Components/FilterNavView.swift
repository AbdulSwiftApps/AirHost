//
//  FilterNavView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/13/24.
//

import SwiftUI

struct FilterNavView: View {
    var body: some View {
        Button(action: {
            // action here
        }, label: {
            Image(systemName: "line.3.horizontal.decrease.circle")
                .foregroundStyle(.black)
                .background {
                    Circle()
                        .fill(.gray)
                        .opacity(0.2)
                        .frame(width: 45, height: 45)
                }
//                .padding(20)
        }) 
    }
}

#Preview {
    FilterNavView()
}
