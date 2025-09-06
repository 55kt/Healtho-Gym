//
//  SignUpScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 6/9/25.
//

import SwiftUI

struct SignUpScreen: View {
    //MARK: - Properties
    @State var showMobile: Bool = false
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 30) {
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.7))
                    .padding(.bottom, .widthPer(per: 0.1))
                
                // SignUp buttons
                Button {
                    showMobile = true
                } label: {
                    Image("phone")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    
                    Text("Mobile Number")
                        .font(.customfont(.regular, fontSize: 14))
                        .maxCenter
                }
                .horizontal20
                .frame(height: 50)
                .foregroundColor(.primaryText)
                .background(Color.txtBG)
                .overlay( RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1) )
                
                HStack(spacing: 20) {
                    Button {
                        //
                    } label: {
                        Image("fb_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                        
                        Text("Facebook")
                            .font(.customfont(.regular, fontSize: 12))
                            .maxCenter
                    }
                    .horizontal20
                    .frame(height: 35)
                    .foregroundColor(.white)
                    .background(Color(hex: "3A91F7"))
                    .cornerRadius(25)
                    
                    Button {
                        //
                    } label: {
                        Image("google_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                        
                        Text("Google")
                            .font(.customfont(.regular, fontSize: 12))
                            .maxCenter
                    }
                    .horizontal20
                    .frame(height: 35)
                    .foregroundColor(.primaryText)
                    .background(Color.txtBG)
                    .overlay( RoundedRectangle(cornerRadius: 25.0).stroke(Color.board, lineWidth: 1) )
                }
                
                Spacer()
            }
            .horizontal20
            .topWithSafe
            .bottomWithSafe
        }
        .bgNavLink(content: MobileNumberScreen(), isAction: $showMobile)
        .navHide
    }
}

//MARK: - Preview
#Preview {
    SignUpScreen()
}
