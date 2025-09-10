//
//  SettingsRow.swift
//  Healtho Gym
//
//  Created by Vlad on 10/9/25.
//

import SwiftUI

struct SettingsRow: View {
    //MARK: - Properties
    @State var title: String = "String"
    @State var icon: String = ""
    @State var value: String = ""
    @State var isIconCircle: Bool = false
    var action: () -> Void?
    
    //MARK: - Body
    var body: some View {
        Button {
            action()
        } label: {
            HStack(spacing: 20) {
                
                if (isIconCircle) {
                    Image(icon)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 22, height: 22)
                        .cornerRadius(11)
                } else {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                }
                
                Text(title)
                    .font(.customfont(.semiBold, fontSize: 15))
                    .maxleft
                
                Text(value)
                    .font(.customfont(.semiBold, fontSize: 15))
            }
        }
        .horizontal20
        .foregroundColor(.primaryText)
        .frame(height: 50)
        .background(Color.txtBG)
        .cornerRadius(5)
    }
}

//MARK: - Preview
#Preview {
    SettingsRow() {}
}
