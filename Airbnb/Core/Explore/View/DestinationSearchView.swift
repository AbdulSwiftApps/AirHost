//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 4/25/24.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var countAdult = 0

    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation(.snappy) {
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }

                Spacer()
                
                if !destination.isEmpty {
                    ClearButtonView(text: $destination)
                }
            }
            .padding()

            // where to
            VStack {
                if selectedOption == .location {
                    SearchWhereToView(destination: $destination)
                } else {
                    CollaspedPickerView(title: "Where", description: "Add destination")
                }
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .modifier(SearchViewModifier())
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }

            // when
            VStack(alignment: .leading) {
                if selectedOption == .dates {                    
                    SearchWhenTripView(startDate: $startDate, endDate: $endDate)
                } else {
                    CollaspedPickerView(title: "When", description: "Add dates")
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 180 : 64)
            .modifier(SearchViewModifier())
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
            }

            // who
            VStack(alignment: .leading) {
                if selectedOption == .guests {
                    SearchAddGuestView(countAdult: $countAdult)
                } else {
                    CollaspedPickerView(title: "Who", description: "Add guests")
                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .modifier(SearchViewModifier())
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}
