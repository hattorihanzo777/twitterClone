//
//  FeedView.swift
//  TwitterSwiftUIClone
//
//  Created by Luka Bozanovic on 11.07.21.
//

import SwiftUI

struct FeedView: View {
    
    @State var isShowingNewTweetView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                ForEach(0..<100) { _ in
                    TweetCellView()
                }
            }
            
            Button(action: { isShowingNewTweetView.toggle() }, label: {
                Image("Tweet")
                    .resizable()
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .frame(width:32, height:32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $isShowingNewTweetView) {
                NewTweetView(isPresented: $isShowingNewTweetView)
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
