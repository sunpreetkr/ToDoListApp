//
//  TLButton.swift
//  ToDoList
//
//  Created by Sunpreet Kaur on 6/10/2023.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            // Action
            action()
            
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        }
       
    }
}

#Preview {
    TLButton(title: "Value", background: .pink){
        // Action
    }
}
