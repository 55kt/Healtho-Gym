//
//  ExercisesDetailsScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 25/9/25.
//

import SwiftUI

struct ExercisesDetailsScreen: View {
    // MARK: - Properties
    @Environment(\.dismiss) private var dismiss
    @State private var imageArr = ["ed_1", "ed_2"]
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image("back_white")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Text("Bench Press")
                        .font(.customfont(.regular, fontSize: 18))
                        .maxleft
                }
                .foregroundColor(Color.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView {
                    VStack(spacing: 15) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(spacing: 15) {
                                ForEach(0 ..< imageArr.count, id: \.self) { index in
                                    Image(imageArr[index])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: .widthPer(per: 0.8), height: .widthPer(per: 0.4))
                                        .cornerRadius(15)
                                }
                            }
                            .all15
                        }
                        VStack(spacing: 15) {
                            Text("Bench Press")
                                .font(.customfont(.semiBold, fontSize: 15))
                                .maxleft
                            
                            Text("(1) Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lacinia ornare gravida. Fusce quis justo et sapien dictum volutpat. Praesent eget libero eleifend, gravida felis vel, elementum lacus. Ut tincidunt tristique ultricies. Fusce porttitor ultricies orci a consequat. Curabitur lorem ex, volutpat condimentum luctus pellentesque, laoreet quis ipsum.")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxleft
                            
                            Text("(2) Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lacinia ornare gravida. Fusce quis justo et sapien dictum volutpat. Praesent eget libero eleifend, gravida felis vel, elementum lacus. Ut tincidunt tristique ultricies. Fusce porttitor ultricies orci a consequat. Curabitur lorem ex, volutpat condimentum luctus pellentesque, laoreet quis ipsum.")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxleft
                            
                            Text("(3) Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lacinia ornare gravida. Fusce quis justo et sapien dictum volutpat. Praesent eget libero eleifend, gravida felis vel, elementum lacus. Ut tincidunt tristique ultricies. Fusce porttitor ultricies orci a consequat. Curabitur lorem ex, volutpat condimentum luctus pellentesque, laoreet quis ipsum.")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxleft
                                .bottom15
                            
                            Text("Equipment Required")
                                .font(.customfont(.semiBold, fontSize: 15))
                                .maxleft
                            
                            Text("Barbell, Bench, Plate, Lock")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxleft
                                .bottom15
                            
                            Text("Target Muscle")
                                .font(.customfont(.semiBold, fontSize: 15))
                                .maxleft
                            
                            Text("Chest, Shoulder, Triceps")
                                .font(.customfont(.regular, fontSize: 13))
                                .maxleft
                                .bottom15
                        }
                        .horizontal15
                    }
                }
            }
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    HStack {
                        Button {
                            //
                        } label: {
                            Image("fav_color")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                        
                        Button {
                            //
                        } label: {
                            Image("share")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                    }
                    .horizontal20
                    .vertical15
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(radius: 2)
                }
            }
            .padding(20)
        }
        .navHide
    }
}

// MARK: - Preview
#Preview {
    ExercisesDetailsScreen()
}
