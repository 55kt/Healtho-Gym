//
//  RoundDropDown.swift
//  Healtho Gym
//
//  Created by Vlad on 29/10/25.
//

import SwiftUI

struct RoundDropDown: View {
    
    // MARK: - Properties
    @Binding var select: NSDictionary?
    @State var placeholder: String = ""
    @State var listArr: [NSDictionary] = []
    var action: ((NSDictionary) -> Void)?
    
    // MARK: - Body
    var body: some View {
        Menu {
            ForEach( 0 ..< listArr.count, id: \.self) {
                index in
                
                let obj = listArr[index]
                
                Button {
                    $select.wrappedValue = obj
                    action?(obj)
                } label: {
                    Text(obj["name"] as? String ?? "")
                        .font(.customfont(.regular, fontSize: 15))
                        .maxCenter
                }

            }
        } label: {
            Text($select.wrappedValue?.value(forKey: "name") as? String ?? placeholder)
                .font(.customfont(.regular, fontSize: 15))
                .maxleft
            
            Image("down")
                .resizable()
                .scaledToFit()
                .frame(width: 15, height: 15)
        }
        .horizontal20
        .frame(height: 50)
        .foregroundColor( $select.wrappedValue == nil ? .placeholder : .primaryText )
        .background( Color.txtBG )
        .cornerRadius(10)
        .overlay( RoundedRectangle(cornerRadius: 10.0).stroke( Color.board, lineWidth: 1) )

    }
}

// MARK: - Preview
#Preview {
    RoundDropDown(select: .constant(nil), placeholder: "Chose", listArr: [ ["name": "Goal1"], ["name": "Goal2"], ["name": "Goal3"] ])
}
