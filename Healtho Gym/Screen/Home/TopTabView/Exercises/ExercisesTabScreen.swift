//
//  ExercisesTabScreen.swift
//  Healtho Gym
//
//  Created by Vlad on 22/9/25.
//

import SwiftUI

struct ExercisesTabScreen: View {
    //MARK: - Properties
    private var colum: [GridItem] = [
        GridItem(.flexible(), spacing: 15),
        GridItem(.flexible(), spacing: 15),
    ]
    
    @State private var listArr = [
        [
          "title": "Chest",
          "subtitle": "16 Exercises",
          "image": "ex_1"
        ],
        [
          "title": "Back",
          "subtitle": "16 Exercises",
          "image": "ex_2"
        ],
        [
          "title": "Biceps",
          "subtitle": "16 Exercises",
          "image": "ex_3"
        ],
        [
          "title": "Triceps",
          "subtitle": "16 Exercises",
          "image": "ex_4"
        ],
        [
          "title": "Shoulders",
          "subtitle": "16 Exercises",
          "image": "ex_5"
        ],
        [
          "title": "Abs",
          "subtitle": "16 Exercises",
          "image": "ex_6"
        ],
        [
          "title": "Legs",
          "subtitle": "16 Exercises",
          "image": "ex_7"
        ],
        [
          "title": "Chest",
          "subtitle": "16 Exercises",
          "image": "ex_8"
        ]
      ]
    
    //MARK: - Body
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: colum, spacing: 15) {
                    ForEach( 0 ..< listArr.count, id: \.self) { index in
                        
                        let obj = listArr[index]
                        
                        ZStack(alignment: .bottomLeading) {
                            Image(obj["image"] ?? "")
                                .resizable()
                                .aspectRatio(1, contentMode: .fill)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                            VStack {
                                Text(obj["title"] ?? "")
                                    .font(.customfont(.semiBold, fontSize: 15))
                                    .maxCenter
                                
                                Text(obj["subtitle"] ?? "")
                                    .font(.customfont(.semiBold, fontSize: 10))
                                    .maxCenter
                            }
                            .foregroundColor(Color.primaryText)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color.primaryApp)
                            .cornerRadius(15, corner: [.bottomLeft])
                            .cornerRadius(30, corner: [.topRight])
                            .padding(.trailing, 20)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .aspectRatio(1, contentMode: .fill)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 2)
                    }
                }
                .all15
            }
        }
    }
}

//MARK: - Preview
#Preview {
    ExercisesTabScreen()
}
