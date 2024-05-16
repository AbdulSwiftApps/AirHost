//
//  MessageView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/13/24.
//

import SwiftUI

struct MessageView: View {
    let messages: Messages
    
    var body: some View {
        NavigationStack {
            HStack {
                Text("Messages")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()

                SearchNavView()
                    .padding()
                FilterNavView()
                    .padding()
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)

            ScrollView {
                VStack(spacing: 16) {
                    AirHostSupportMessageView(message: DeveloperPreview.shared.messages[0])
                    AirHostSupportMessageView(message: DeveloperPreview.shared.messages[0])
                    UserMessageView(messages: DeveloperPreview.shared.messages[0], listing: DeveloperPreview.shared.listings[0])
                    UserMessageView(messages: DeveloperPreview.shared.messages[1], listing: DeveloperPreview.shared.listings[1])
                    UserMessageView(messages: DeveloperPreview.shared.messages[2], listing: DeveloperPreview.shared.listings[1])
                    AirHostSupportMessageView(message: DeveloperPreview.shared.messages[0])
                    AirHostSupportMessageView(message: DeveloperPreview.shared.messages[0])
                    UserMessageView(messages: DeveloperPreview.shared.messages[3], listing: DeveloperPreview.shared.listings[0])
                    AirHostSupportMessageView(message: DeveloperPreview.shared.messages[0])
                    UserMessageView(messages: DeveloperPreview.shared.messages[4], listing: DeveloperPreview.shared.listings[0])
                    AirHostSupportMessageView(message: DeveloperPreview.shared.messages[0])
                    AirHostSupportMessageView(message: DeveloperPreview.shared.messages[0])
                    UserMessageView(messages: DeveloperPreview.shared.messages[5], listing: DeveloperPreview.shared.listings[1])
                    UserMessageView(messages: DeveloperPreview.shared.messages[2], listing: DeveloperPreview.shared.listings[0])
                    UserMessageView(messages: DeveloperPreview.shared.messages[0], listing: DeveloperPreview.shared.listings[1])
                    AirHostSupportMessageView(message: DeveloperPreview.shared.messages[0])
                }
                .padding()
            }
        }
    }
}


#Preview {
    MessageView(messages: DeveloperPreview.shared.messages[0])
}
