//
//  OTPScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 6/9/25.
//

import SwiftUI

struct OTPScreen: View {
    //MARK: - Properties
    @State private var txtOTP: String = "1234"
    @State private var showName: Bool = false
    
    @State private var timeRemaining: UInt8 = 30
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    //MARK: - Body
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    // Header
                    Text("Enter the code that was send to your\nEntered Mobile Number")
                        .multilineTextAlignment(.center)
                        .maxCenter
                        .foregroundColor(.primaryApp)
                        .top15
                    
                    ZStack {
                        // OTP input circles
                        HStack(spacing: 20) {
                            Spacer()
                            
                            let otpCode = txtOTP.map{String($0)}
                            
                            ForEach(0 ..< 4) { index in
                                VStack {
                                    if(index < otpCode.count) {
                                        Text(otpCode[index])
                                            .font(.customfont(.bold, fontSize: 25))
                                            .maxCenter
                                    } else {
                                        Text("")
                                            .font(.customfont(.bold, fontSize: 25))
                                            .maxCenter
                                    }
                                }
                                .frame(width: 60, height: 60)
                                .foregroundColor(.primaryText)
                                .background(Color.txtBG)
                                .overlay( RoundedRectangle(cornerRadius: 30.0).stroke(Color.board, lineWidth: 1) )
                            }
                            
                            Spacer()
                        }
                        
                        TextField("", text: $txtOTP)
                            .keyboardType(.phonePad)
                            .frame(height: 50)
                            .foregroundColor(.clear)
                            .accentColor(.clear)
                    }
                    
                    
                    // Verify code button
                    Button {
                        showName = true
                    } label: {
                        Text("VERIFY")
                            .font(.customfont(.semiBold, fontSize: 18))
                            .horizontal15
                    }
                    .foregroundColor(.btnPrimaryText)
                    .frame(height: 50)
                    .maxCenter
                    .background(Color.primaryApp)
                    .cornerRadius(25)

                    HStack {
                        Button {
                            // action
                        } label: {
                            Text("Change Number")
                                .font(.customfont(.regular, fontSize: 12))
                                .foregroundColor(.secondaryText)
                        }
                        
                        Spacer()
                        
                        // Resend OTP code button
                        Button {
                            // action
                        } label: {
                            Text("Resend (\(timeRemaining))")
                                .font(.customfont(.regular, fontSize: 12))
                                .foregroundColor(Color(hex: "8E44AD"))
                                .onReceive(timer) { time in
                                    if(timeRemaining > 0) {
                                        timeRemaining -= 1
                                    }
                                }
                        }

                    }
                }
                .horizontal20
                .topWithSafe
                .bottomWithSafe
            }
        }
        .bgNavLink(content: OTPScreen(), isAction: $showName)
        .navHide
    }
}

//MARK: - Preview
#Preview {
    OTPScreen()
}
