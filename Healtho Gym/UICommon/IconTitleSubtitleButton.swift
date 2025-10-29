//
//  IconTitleSubtitleButton.swift
//  Healtho Gym
//
//  Created by Vlad on 29/10/25.
//

import SwiftUI

struct IconTitleSubtitleButton: View {
    
    // MARK: - Properties
    @State var icon: String = ""
    @State var title: String = ""
    @State var subtitle: String = ""
    
    var action: (() -> Void)?
    
    // MARK: - Body
    var body: some View {
        Button {
            action?()
        } label: {
            HStack(spacing: 20) {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                
                VStack {
                    Text(title)
                        .multilineTextAlignment(.leading)
                        .font(.customfont(.semiBold, fontSize: 15))
                        .maxleft
                    
                    Text(subtitle)
                        .multilineTextAlignment(.leading)
                        .font(.customfont(.regular, fontSize: 12))
                        .maxleft
                }
            }
        }
        .foregroundColor(.primaryText)
        .all15
        .background( Color.btnBG )
        .cornerRadius(15)
        .horizontal20
    }
}

// MARK: - Preview
#Preview {
    IconTitleSubtitleButton()
}
