//
//  SearchAddGuestView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/30/24.
//

import SwiftUI

struct SearchAddGuestView: View {
    @Binding var countAdult: Int
    
    var body: some View {
        Text("Who's coming?")
            .font(.title2)
            .fontWeight(.semibold)
        
        Stepper {
            Text("\(countAdult) Adults")
        } onIncrement: {
            countAdult += 1
        } onDecrement: {
            guard countAdult > 0 else { return }
            countAdult -= 1
        }
        .fontWeight(.semibold)
    }
}

struct SearchAddGuestView_Preview: PreviewProvider {
    @State static var countAdultPreview = 0
    
    static var previews: some View {
        SearchAddGuestView(countAdult: $countAdultPreview)
    }
}
