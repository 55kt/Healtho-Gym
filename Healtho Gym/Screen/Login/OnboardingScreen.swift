//
//  OnboardingScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 4/9/25.
//

import SwiftUI

struct OnboardingScreen: View {
    //MARK: - Properties
    @State private var showSignUp: Bool = false
    @State private var selectPage: Int = 0
        
    @State private var pageArr: Array = [
        [
            "title": "Exercises",
                 "subtitle": "To Your Personalized Profile",
                 "image": "in_1"
        ],
        
        ["title": "Keep Eye On Health\nTracking",
         "subtitle": "Log & reminder your activities",
         "image": "in_2"],
        
        ["title": "Check Your Progress",
         "subtitle": "An tracking calendar",
         "image": "in_3"],
    ]
    
    //MARK: - Body
    var body: some View {
        ZStack(alignment: .center){
            TabView(selection: $selectPage.animation()) {
                // Page center content
                ForEach(0 ..< pageArr.count, id: \.self) {
                    index in
                    var iObj = pageArr[index]
                    VStack{
                        Spacer()
                            
                        Text( iObj["title"] ?? "" )
                            .multilineTextAlignment(.center)
                            .font(.customfont(.bold, fontSize: 24))
                        
                        Text( iObj["subtitle"] ?? "" )
                            .multilineTextAlignment(.center)
                            .font(.customfont(.regular, fontSize: 14))
                        
                        HStack {
                            Image(  iObj["image"] ?? "" )
                                .resizable()
                                .scaledToFit()
                                .frame(width: .widthPer(per: 0.65))
                        }
                        .frame(width: .screenWidth , height: .screenWidth, alignment: .center)
                            
                        Spacer()
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .overlay( HStack(spacing: 8) {
                ForEach( 0 ..< pageArr.count, id: \.self) {
                    index in
                    
                    // Bottom selected page indicator
                    Capsule()
                        .fill(selectPage == index ? Color.primaryApp  : Color.inActive )
                        .frame(width: 8, height: 8)
                }
            }.padding(.bottom, .heightPer(per: 0.2)) , alignment: .bottom)
            
            VStack{
                HStack{
                    Spacer()
                    
                    // Skip Button
                    Button(action: {
                        // action
                    }, label: {
                        Text("Skip")
                            .font(.customfont(.light, fontSize: 12))
                            .horizontal15
                            .vertical8
                    })
                    .foregroundColor(.secondaryText)
                    .background( Color.txtBG )
                    .overlay( RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1) )
                }
                
                Spacer()
                
                // NEXT Button
                Button(action: {
                    showSignUp = true
                }, label: {
                    Text("NEXT")
                        .font(.customfont(.semiBold, fontSize: 14))
                        .horizontal15
                })
                .foregroundColor(.btnPrimaryText)
                .frame(width: 150, height: 50)
                .background( Color.primaryApp )
                .cornerRadius(25)
            }
            .horizontal20
            .topWithSafe
            .bottomWithSafe
            
        }
        .bgNavLink(content: SignUpScreen(), isAction: $showSignUp)
        .navHide
    }
}

//MARK: - Preview
#Preview {
    NavigationView {
        OnboardingScreen()
    }
}
