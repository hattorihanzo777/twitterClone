//
//  Message.swift
//  TwitterSwiftUIClone (iOS)
//
//  Created by Luka Bozanovic on 13.07.21.
//

import Foundation

struct mockMessages: Identifiable {
    let id: Int
    let imageName: String
    let messageText: String
    let isCurrentUser: Bool
}

let MOCK_MESSAGES: [mockMessages] = [
    .init(id: 0, imageName: "spiderman", messageText: "Hey what's up?", isCurrentUser: false),
    .init(id: 1, imageName: "batman", messageText: "Not much. You?", isCurrentUser: true),
    .init(id: 2, imageName: "batman", messageText: "How's the marvel universe?", isCurrentUser: true),
    .init(id: 3, imageName: "spiderman", messageText: "Pusi kurac?", isCurrentUser: false),
    .init(id: 4, imageName: "spiderman", messageText: "gggg", isCurrentUser: false),
    .init(id: 5, imageName: "batman", messageText: "Test longer message. Test longer message. Test longer message.", isCurrentUser: true)
]
