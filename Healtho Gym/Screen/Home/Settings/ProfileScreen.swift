//
//  ProfileScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 10/9/25.
//

import SwiftUI

struct ProfileScreen: View {
    //MARK: - Properties
    @Environment(\.dismiss) private var dismiss
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack {
                // Profile Header
                HStack {
                    
                    // Back button
                    Button {
                        dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(8)
                    }

                    
                    Text("Profile")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxleft
                }
                .foregroundColor(.primaryText)
                .horizontal20
                .topWithSafe
                
                // Profile rows area
                ScrollView {
                    VStack(spacing: 15) {
                        
                        // User avatar/Image/Photo
                        HStack(spacing: 20) {
                            Image("user_placeholder")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .cornerRadius(15)
                            
                            // User Info
                            VStack(spacing: 4) {
                                Text("Mister Bean")
                                    .font(.customfont(.semiBold, fontSize: 15))
                                    .maxleft
                                
                                Text("+30 80973244210")
                                    .font(.customfont(.semiBold, fontSize: 15))
                                    .maxleft
                                
                                Text("mrbean@mail.com")
                                    .font(.customfont(.semiBold, fontSize: 12))
                                    .accentColor(.primaryText)
                                    .maxleft
                                
                                HStack {
                                    Image("location")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                    
                                    Text("London")
                                        .font(.customfont(.semiBold, fontSize: 12))
                                        .accentColor(.primaryText)
                                        .maxleft
                                }
                            }
                        }
                        
                        // Profile settings rows
                        SettingsRow(title: "Complete Task", icon: "completed_tasks", value: "3") {
                            //
                        }
                        
                        SettingsRow(title: "Level", icon: "level", value: "Beginner") {
                            //
                        }
                        
                        SettingsRow(title: "Goals", icon: "goal", value: "Mass Gain") {
                            //
                        }
                        
                        SettingsRow(title: "Challenges", icon: "challenges", value: "4") {
                            //
                        }

                        
                        SettingsRow(title: "Plans", icon: "calendar", value: "2") {
                            //
                        }
                        
                        SettingsRow(title: "Fitness Device", icon: "smartwatch", value: "Mi") {
                            //
                        }
                    }
                    .horizontal15
                    .vertical15
                    .bottomWithSafe
                }
            }
        }
        .navHide
    }
}

//MARK: - Preview
#Preview {
    ProfileScreen()
}
