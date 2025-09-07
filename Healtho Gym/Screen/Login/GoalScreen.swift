//
//  GoalScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 7/9/25.
//

import SwiftUI

struct GoalScreen: View {
    //MARK: - Properties
    @State private var selectIndex: Int = 0
    @State private var listArr = [
        ["name" : "Fat Loss"],
        ["name" : "Weight Gain"],
        ["name" : "Muscle Gain"],
        ["name" : "Other"]
    ]
    
    //MARK: - Body
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Select Your Goal")
                        .font(.customfont(.semiBold, fontSize: 18))
                        .maxleft
                        .top15
                    
                    ForEach(0 ..< listArr.count, id: \.self) { index in
                        Button {
                            selectIndex = index
                        } label: {
                            Image(selectIndex == index ? "radio_select" : "radio_unselect")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            
                            Text(listArr[index]["name"] ?? "")
                                .font(.customfont(.regular, fontSize: 18))
                                .maxCenter
                        }
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background(Color.txtBG)
                        .overlay( RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1) )
                    }
                    
                    Button {
                        // action
                    } label: {
                        Text("DONE")
                            .font(.customfont(.semiBold, fontSize: 18))
                            .horizontal15
                    }
                    .foregroundColor(.btnPrimaryText)
                    .frame(height: 50)
                    .maxCenter
                    .background(Color.primaryApp)
                    .cornerRadius(25)

                    
                }
                .horizontal20
                .topWithSafe
                .bottomWithSafe
            }
        }
        .navHide
    }
}

#Preview {
    GoalScreen()
}
