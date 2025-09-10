//
//  SettingsScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 7/9/25.
//

import SwiftUI

struct SettingsScreen: View {
    //MARK: - Properties
    @State private var showProfile: Bool = false
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack {
                // Profile Header
                HStack {
                    Text("Settings")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxleft
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                // Settings rows area
                ScrollView {
                    VStack(spacing: 15) {
                        SettingsRow(title: "Profile", icon: "user_placeholder", isIconCircle: true) {
                            showProfile = true
                        }
                        
                        SettingsRow(title: "Language", icon: "language", value: "Eng", isIconCircle: false) {
                            //
                        }
                        
                        SettingsRow(title: "Health Data", icon: "data") {
                            //
                        }
                        
                        SettingsRow(title: "Notification", icon: "notification", value: "On") {
                            //
                        }
                        
                        SettingsRow(title: "Refer a friend", icon: "share") {
                            //
                        }
                        
                        SettingsRow(title: "Feedback", icon: "feedback") {
                            //
                        }
                        
                        SettingsRow(title: "Rate us", icon: "rating") {
                            //
                        }
                        
                        SettingsRow(title: "Log out", icon: "logout") {
                            //
                        }
                    }
                    .horizontal15
                    .vertical15
                    .bottomWithSafe
                }
            }
        }
        .bgNavLink(content: ProfileScreen(), isAction: $showProfile)
        .navHide
    }
}

//MARK: - Preview
#Preview {
    NavigationView {
        SettingsScreen()
    }
}
