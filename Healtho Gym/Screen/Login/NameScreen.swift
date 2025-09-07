//
//  NameScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 6/9/25.
//

import SwiftUI

struct NameScreen: View {
    //MARK: - Properties
    @State private var txtName: String = ""
    @State private var showGoal: Bool = false
    
    //MARK: - Body
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Enter Your Name")
                        .font(.customfont(.semiBold, fontSize: 18))
                        .maxleft
                        .top15
                    
                    TextField("ie. Mister Bean", text: $txtName)
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background(Color.txtBG)
                        .overlay( RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1) )
                        .bottom15
                    
                    Button {
                        showGoal = true
                    } label: {
                        Text("NEXT")
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
        .bgNavLink(content: GoalScreen(), isAction: $showGoal)
        .navHide
    }
}

#Preview {
    NameScreen()
}
