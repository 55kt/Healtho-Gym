//
//  FindWorkoutPlanScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 29/10/25.
//

import SwiftUI

struct FindWorkoutPlanScreen: View {
    // MARK: - Properties
    @Environment(\.dismiss) private var dismiss
    @State private var selectGoal: NSDictionary?
    @State private var selectLevel: NSDictionary?
    @State private var selectWeek: NSDictionary?
    @State private var selectDayPerWeek: NSDictionary?
    
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
                    Text("Find a workout plan")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxleft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                VStack(spacing: 25) {
                    RoundDropDown(select: $selectGoal, placeholder: "Choose Goal", listArr: [["name": "Goal 1"], ["name": "Goal 2"], ["name": "Goal 3"],])
                    
                    RoundDropDown(select: $selectLevel, placeholder: "Choose Level", listArr: [["name": "Level 1"], ["name": "Level 2"], ["name": "Level 3"],])
                    
                    RoundDropDown(select: $selectWeek, placeholder: "# of weeks", listArr: [["name": "Week 1"], ["name": "Week 2"], ["name": "Week 3"],])
                    
                    RoundDropDown(select: $selectDayPerWeek, placeholder: "Days per weeks", listArr: [["name": "1"], ["name": "2"], ["name": "3"],])
                    
                    Button {
                        //
                    } label: {
                        Text("Find Workout Plan")
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

// MARK: - Preview
#Preview {
    FindWorkoutPlanScreen()
}
