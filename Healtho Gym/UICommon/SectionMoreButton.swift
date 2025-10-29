//
//  SectionMoreButton.swift
//  Healtho Gym
//
//  Created by Vlad on 29/10/25.
//

import SwiftUI

struct SectionMoreButton: View {
    
    // MARK: - Properties
    @State var title: String = ""
    var action: (() -> Void)?
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.customfont(.semiBold, fontSize: 15))
                .maxleft
                .foregroundColor(.primaryText)
            
            Button {
                //
            } label: {
                Text("More")
                    .font(.customfont(.regular, fontSize: 12))
            }
            .foregroundColor( Color.primaryApp )
        }
        .horizontal20
    }
}

// MARK: - Preview
#Preview {
    SectionMoreButton()
}
