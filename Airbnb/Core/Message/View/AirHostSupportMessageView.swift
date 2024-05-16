//
//  UserMessagePreviewView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/13/24.
//

import SwiftUI

struct AirHostSupportMessageView: View {
    let message: Messages
    @State private var isClicked = false
    
    var body: some View {
        let clickDuration: TimeInterval = 0.1 // Adjust duration as needed

        
        HStack {
            Image("logo")
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 4)
            
            VStack(alignment: .leading) {
                Text("\(message.airHostMessageTitle.status)")
                
                Text("\(message.airHostSupport)")
                
                Text("\(message.airHostMessage)")
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
            .font(.footnote)
            .fontWeight(.semibold)
            .padding(.leading)
            
            Spacer()
            
            Text("\(message.dateMessaged)")
                .font(.caption)
                .fontWeight(.semibold)
        }
        .padding()
        .background(isClicked ? Color.gray.opacity(0.2) : Color.clear)
        .onTapGesture {
            isClicked.toggle()
            print("Airbnb support message clicked")
            DispatchQueue.main.asyncAfter(deadline: .now() + clickDuration) {
                isClicked = false
            }
        }
    }
}

#Preview {
    AirHostSupportMessageView(message: DeveloperPreview.shared.messages[0])
}
