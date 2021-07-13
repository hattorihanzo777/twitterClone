//
//  ConversationCell.swift
//  TwitterSwiftUIClone (iOS)
//
//  Created by Luka Bozanovic on 13.07.21.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack (spacing: 10) {
                Image("venom-10")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(28)
                
                VStack (alignment: .leading, spacing: 4) {
                    Text("venom")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("Longer message text to see what happens when I do this here")
                        .font(.system(size: 14))
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    
                }
                .padding(.trailing)
                .foregroundColor(.black)
            }
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
