//
//  NotificationsScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 11/9/25.
//

import SwiftUI

struct NotificationsScreen: View {
    //MARK: - Properties
    @State private var listArr = [
        "New exercisses and plans updates",
        "New workouts and plans updates",
        "New exercisses and plans updates",
        "New workouts and plans updates",
        "New exercisses and plans updates",
        "New workouts and plans updates"
    ]
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack {
                // Header
                HStack {
                    
                    Text("Notifications")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxleft
                    
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                    // Notifications List
                    ScrollView {
                        LazyVStack(spacing: 15) {
                            ForEach(0 ..< listArr.count, id: \.self) { index in
                                VStack(spacing: 0) {
                                    Text(listArr[index])
                                        .font(.customfont(.semiBold, fontSize: 15))
                                        .maxleft
                                }
                                .all15
                                .background(Color.txtBG)
                                .cornerRadius(15)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 15).stroke(Color.board, lineWidth: 1)
                                }
                            }
                        }
                    }
                    .horizontal20
                    .vertical15
            }
        }
        .navHide
    }
}

//MARK: - Preview
#Preview {
    NotificationsScreen()
}
