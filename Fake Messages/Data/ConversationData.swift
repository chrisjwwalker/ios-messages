//
//  ConversationData.swift
//  Fake Messages
//
//  Created by Chris J W Walker on 19/08/2023.
//

extension Data {
    struct ConversationData {
        let conversations: [Components.ConversationButtonViewModel] = [
            .init(
                initials: "CB",
                imageName: nil,
                name: "Charlie Brown",
                number: "+123456789",
                lastMessage: "What shall we do today?",
                timestamp: "11:30am",
                action: {
                    print("Convo 1")
                }
            ),
            .init(
                initials: "NT",
                imageName: nil,
                name: "Natalie Till",
                number: "+1987654321",
                lastMessage: "What time are we meeting?",
                timestamp: "Yesterday",
                action: {
                    print("Convo 2")
                }
            ),
            .init(
                initials: "UK",
                imageName: nil,
                name: nil,
                number: "+628734234",
                lastMessage: "Who is this?",
                timestamp: "Tuesday",
                action: {
                    print("Convo 3")
                }
            )
        ]
    }
}
