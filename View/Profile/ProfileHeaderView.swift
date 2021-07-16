//
//  ProfileHeaderView.swift
//  TwitterSwiftUIClone (iOS)
//
//  Created by Luka Bozanovic on 16.07.21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack {
            Image("batman")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .cornerRadius(120/2)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
            Text("Bruce Wayne")
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            
            Text("@batman")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Billionare by day, dark knight by night")
                .font(.system(size: 14))
                .padding(.top, 8)
            
            HStack (spacing: 40) {
                VStack {
                    Text("12")
                        .font(.system(size: 16)) .bold()
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                VStack {
                    Text("12")
                        .font(.system(size: 16)) .bold()
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            
            ProfileActionButtonView(isCurrentUser: false)
            
            Spacer()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
