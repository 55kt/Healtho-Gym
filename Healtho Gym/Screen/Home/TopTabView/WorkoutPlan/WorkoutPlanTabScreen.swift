//
//  WorkoutPlanTabScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 29/10/25.
//

import SwiftUI

struct WorkoutPlanTabScreen: View {
    
    // MARK: - Properties
    @State private var mArr: [String] = ["wp_1", "wp_2"]
    @State private var gArr: [String] = ["wp_3", "wp_4"]
    
    @State private var showFindPlan: Bool = false
    @State private var showCreatePlan: Bool = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 15) {
                    IconTitleSubtitleButton(icon: "search_circle", title: "Find a workout plan", subtitle: "Perfect Workout plan that fullfill your fitnes goal")
                    {
                        showFindPlan = true
                    }
                    
                    Button {
                        //
                    } label: {
                        Text("My plan")
                            .font(.customfont(.semiBold, fontSize: 14))
                            .maxCenter
                    }
                    .foregroundColor(.primaryText)
                    .frame(height: 50)
                    .background( Color.primaryApp )
                    .cornerRadius(15)
                    .horizontal20

                    IconTitleSubtitleButton(icon: "add_big", title: "Create new plan", subtitle: "Customize workout plans as per your need") {
                        showCreatePlan = true
                    }
                    
                    VStack(spacing: 8) {
                        SectionMoreButton(title: "Muscle Building") {
                            // action
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: 15) {
                                ForEach(0 ..< mArr.count, id: \.self) { index in
                                    Image(mArr[index])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: .widthPer(per: 0.8), height: .widthPer(per: 0.4))
                                        .cornerRadius(15)
                                }
                            }
                            .horizontal20
                        }
                        
                        SectionMoreButton(title: "Gain Strength") {
                            // action
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: 15) {
                                ForEach(0 ..< gArr.count, id: \.self) { index in
                                    Image(gArr[index])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: .widthPer(per: 0.8), height: .widthPer(per: 0.4))
                                        .cornerRadius(15)
                                }
                            }
                            .horizontal20
                        }
                    }
                }
                .vertical15
                .bottomWithSafe
            }
        }
        .bgNavLink(content: FindWorkoutPlanScreen(), isAction: $showFindPlan)
        .bgNavLink(content: CreatePlanScreen(), isAction: $showCreatePlan)
    }
}

// MARK: - Preview
#Preview {
    WorkoutPlanTabScreen()
}
