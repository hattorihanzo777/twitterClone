//
//  ConversationsView.swift
//  TwitterSwiftUIClone (iOS)
//
//  Created by Luka Bozanovic on 13.07.21.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingNewMessageView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                ForEach(0..<20) { _ in
                    NavigationLink(
                        destination: ChatView(),
                        label: {
                            ConversationCell()
                        })
                }
            }
            
            Button(action: {self.isShowingNewMessageView.toggle()}, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width:32, height:32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingNewMessageView, content: {
                SearchView()
            })
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
