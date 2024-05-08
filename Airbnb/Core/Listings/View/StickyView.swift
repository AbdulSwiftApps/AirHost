//
//  StickyView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/25/24.
//

import SwiftUI

struct StickyView: View {
    var body: some View {
        VStack {            
            HStack {
                // price
                VStack(alignment: .leading, spacing: 2) {
                    
                    Text("$500")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Total before taxes")
                        .font(.footnote)
                    
                    Text("Oct 15 - 20")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .underline()
                }
                
                Spacer()
                
                // button
                ReserveButtonView()
                
            }
            .padding()
        }
    }
}

#Preview {
    StickyView()
}
