//
//  TopTabViewScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 20/9/25.
//

import SwiftUI

struct TopTabViewScreen: View {
    //MARK: - Properties
    @State private var selectTab: Int = 0
    @State private var tabNameArr: [String] = [
        "Health Tip",
        "Exercises",
        "Workout Plan",
        "Challenges",
        "Trainers",
        "Dietician"
    ]
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                // Header
                HStack {
                    Text("Healtho")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxleft
                }
                .foregroundStyle(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                .padding(.bottom, 0.5)
                
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 0) {
                        ForEach( 0 ..< tabNameArr.count, id: \.self ) { index in
                            
                            // Select news button
                            Button {
                                withAnimation {
                                    selectTab = index
                                }
                            } label: {
                                VStack {
                                    Spacer()
                                    Text(tabNameArr[index])
                                        .font(.customfont(.regular, fontSize: 18))
                                        .foregroundColor(index == selectTab ?  Color.primaryApp : Color.white)
                                        .horizontal20
                                    Spacer()
                                    
                                    Rectangle()
                                        .fill(index == selectTab ?  Color.primaryApp : Color.clear)
                                        .frame(height: 2, alignment: .bottom)
                                        .horizontal15
                                        .shadow(radius: 2)
                                }
                            }

                            
                        }
                    }
                }
                .frame(height: 50)
                .background(Color.secondaryApp)
                
                // Horizontal scrolling tabs indicators
                TabView(selection: $selectTab) {
                    HealthTipTabScreen().tag(0)
                    Text("Tab Content 1").tag(1)
                    Text("Tab Content 2").tag(2)
                    Text("Tab Content 3").tag(3)
                    Text("Tab Content 4").tag(4)
                    Text("Tab Content 4").tag(5)
                    Text("Tab Content 4").tag(6)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
            }
        }
        .navHide
    }
}

//MARK: - Preview
#Preview {
    TopTabViewScreen()
}
