//
//  SearchWhenTripView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/30/24.
//

import SwiftUI

struct SearchWhenTripView: View {
    @Binding var startDate: Date
    @Binding var endDate: Date

    var body: some View {
        Text("When's your trip?")
            .font(.title2)
            .fontWeight(.semibold)

        VStack {
            // from
            DatePicker("From", selection: $startDate, displayedComponents: .date)

            Divider()
            
            // to
            DatePicker("To", selection: $endDate, displayedComponents: .date)
        }
        .foregroundStyle(.gray)
        .font(.subheadline)
        .fontWeight(.semibold)
    }
}

struct SearchWhenTripView_Previews: PreviewProvider {
    @State static var startDatePreview = Date()
    @State static var endDatePreview = Date()
    
    static var previews: some View {
        SearchWhenTripView(startDate: $startDatePreview, endDate: $endDatePreview)
    }
}
