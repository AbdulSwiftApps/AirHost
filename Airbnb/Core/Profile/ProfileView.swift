//
//  ProfileView.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/1/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    
                    Text("Log in to start planning your next trip")
                }
                
                // button - log in
                LogInButtonView()
                
                HStack {
                    Text("Don't have an account? ")

                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
                
                // options
                VStack(spacing: 24) {
                    LogInOptionView(name: "Settings", logo: "gear")
                    LogInOptionView(name: "Accessibility", logo: "gear")
                    LogInOptionView(name: "Visit the Help Center", logo: "questionmark.circle")
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Profile")
        }
        

    }
}

#Preview {
    ProfileView()
}
