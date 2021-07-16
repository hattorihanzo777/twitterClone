//
//  UserProfileView.swift
//  TwitterSwiftUIClone (iOS)
//
//  Created by Luka Bozanovic on 16.07.21.
//

import SwiftUI

struct UserProfileView: View {
    
    @State var selectedFilter: TweetFilterOptions = .tweets
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
                
                ForEach(0..<9) { tweet in
                    TweetCellView()
                }
            }
            
            .navigationTitle("batman")
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
