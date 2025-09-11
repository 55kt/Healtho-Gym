//
//  ReminderScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 11/9/25.
//

import SwiftUI

struct ReminderScreen: View {
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack {
                // Header
                HStack {
                    
                    Text("Reminders")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxleft
                    
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                // Reminders list
                ZStack(alignment: .bottomTrailing) {
                    ScrollView {
                        LazyVStack(spacing: 15) {
                            VStack(spacing: 0) {
                                HStack {
                                    Text("Workout Reminder")
                                        .font(.customfont(.semiBold, fontSize: 15))
                                        .maxleft
                                    
                                    Toggle(isOn: .constant(true)) {
                                        Text("Label")
                                    }
                                }
                            }
                            Text("06: 00 AM")
                                .font(.customfont(.semiBold, fontSize: 15))
                                .maxleft
                            
                            HStack {
                                Text("Repeat")
                                    .font(.customfont(.medium, fontSize: 12))
                                    .foregroundColor(.primaryApp)
                                
                                Text("_")
                                    .font(.customfont(.regular, fontSize: 13))
                                    .foregroundColor(.secondaryText)
                                
                                Text("Mon, Tue, Wed, Thu, Fri, Sat, Sun")
                                    .font(.customfont(.regular, fontSize: 13))
                                    .foregroundColor(.primaryText)
                                    .maxleft
                                
                                Button {
                                    //
                                } label: {
                                    Image("delete")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 25, height: 25)
                                }

                            }
                        }
                        .all15
                        .background(Color.txtBG)
                        .cornerRadius(15)
                        .overlay {
                            RoundedRectangle(cornerRadius: 15).stroke(Color.board, lineWidth: 1)
                        }
                        
                    }
                    .horizontal20
                    .vertical15
                    .bottomWithSafe
                    
                    // Add button
                    Button {
                        //
                    } label: {
                        Image("add_big")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    }
                    .horizontal20
                    .bottomWithSafe

                }
            }
        }
        .navHide
    }
}

//MARK: - Preview
#Preview {
    ReminderScreen()
}
