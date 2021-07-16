//
//  ProfileActionButtonView.swift
//  TwitterSwiftUIClone (iOS)
//
//  Created by Luka Bozanovic on 16.07.21.
//

import SwiftUI

struct ProfileActionButtonView: View {
    let isCurrentUser: Bool
    var body: some View {
        
        if isCurrentUser {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Edit profile")
                    .frame(width: 360, height: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
                
            })
            .cornerRadius(20)
        } else {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Follow")
                        .frame(width: 180, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                    
                })
                .cornerRadius(20)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color.purple)
                        .foregroundColor(.white)
                    
                })
                .cornerRadius(20)
            }
        }
        
        
    }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView(isCurrentUser: false)
    }
}
