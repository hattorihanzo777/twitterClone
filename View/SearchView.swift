//
//  SearchView.swift
//  TwitterSwiftUIClone
//
//  Created by Luka Bozanovic on 12.07.21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack (alignment: .leading) {
                ForEach(0..<10) { _ in
                    HStack {Spacer()}
                    
                    NavigationLink(
                        destination: UserProfileView(),
                        label: {
                            UserCell()
                        })
                    
                    UserCell()
                }
            }
            .padding(.leading)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
