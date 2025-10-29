//
//  CreatePlanScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 29/10/25.
//

import SwiftUI

struct CreatePlanScreen: View {
    // MARK: - Properties
    @Environment(\.dismiss) private var dismiss
    
    @State private var txtPlanName: String = ""
    @State private var selectGoal: NSDictionary?
    @State private var selectDuration: NSDictionary?
    @State private var selectLevel: NSDictionary?
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image("back_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Text("Add Plan")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxleft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                VStack(spacing: 25) {
                    
                    TextField("Plan Name", text: $txtPlanName)
                        .horizontal20
                        .frame(height: 50)
                        .foregroundColor(.primaryText)
                        .background( Color.txtBG )
                        .overlay( RoundedRectangle(cornerRadius: 10.0).stroke( Color.board, lineWidth: 1 ) )
                    
                    RoundDropDown(select: $selectGoal, placeholder: "Goal", listArr: [["name": "Goal 1"], ["name": "Goal 2"], ["name": "Goal 3"],])
                    
                    RoundDropDown(select: $selectDuration, placeholder: "Duration", listArr: [["name": "1 hour"], ["name": "2 hours"], ["name": "3 hours"],])
                    
                    RoundDropDown(select: $selectLevel, placeholder: "Choose Level", listArr: [["name": "Level 1"], ["name": "Level 2"], ["name": "Level 3"],]).bottom15
                    
                    
                    Button {
                        //
                    } label: {
                        Text("ADD")
                            .font(.customfont(.semiBold, fontSize: 14))
                            .maxCenter
                    }
                    .foregroundColor(.primaryText)
                    .frame(height: 50)
                    .background( Color.primaryApp )
                    .cornerRadius(25)
                    .horizontal20
                }
                .horizontal20
                .all15
                
                Spacer()

            }
        }
        .navHide
    }
}

#Preview {
    CreatePlanScreen()
}
