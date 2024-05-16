//
//  UserMessageView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/13/24.
//

import SwiftUI

struct UserMessageView: View {
    let messages: Messages
    let listing: Listing

    @State private var isClicked = false

    var body: some View {
        let clickDuration: TimeInterval = 0.1
        HStack {
            // double picture
            ZStack {
                // Place the listing-1 image
                Image("\(listing.imageMessage)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image("\(listing.ownerImageUrl)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 45, height: 45)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .shadow(radius: 4)
                    }
                }
            }
            .frame(width: 100, height: 100)

            
            // user name and message
            VStack(alignment: .leading) {
                Text("\(messages.tripStatus.status)")
                    .fontWeight(.semibold)
                
                Text("\(listing.ownerName)")
                    .fontWeight(.semibold)
                
                Text("\(messages.hostMessage)")
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                HStack {
                    Text("\(messages.dateStayed)")
                    
                    Text("-")
                    
                    Text("\(listing.city)")
                }
                .font(.caption)
            }
            .font(.footnote)
//            .padding(.leading)

            
            Spacer()
            
            // date
            VStack(alignment: .trailing) {
                Text("\(messages.dateMessaged)")
                    .font(.caption)
                    .fontWeight(.semibold)
            }
        }
        .padding(.trailing)
        .background(isClicked ? Color.gray.opacity(0.2) : Color.clear)
        .onTapGesture {
            isClicked.toggle()
            print("user message clicked")
            DispatchQueue.main.asyncAfter(deadline: .now() + clickDuration) {
                isClicked = false
            }
        }
    }
}

#Preview {
    UserMessageView(messages: DeveloperPreview.shared.messages[0], listing: DeveloperPreview.shared.listings[0])
}
