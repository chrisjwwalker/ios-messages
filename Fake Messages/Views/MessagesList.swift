//
//  MessagesList.swift
//  Fake Messages
//
//  Created by Chris J W Walker on 03/10/2023.
//

import SwiftUI

extension Views {
    struct MessagesList: View {
        var body: some View {
            NavigationView {
                ScrollView {
                    VStack(alignment: .leading) {
                        ForEach(Array(Data.ConversationData().conversations.enumerated()), id: \.offset) { convo in
                            Components.ConversationButton(
                                viewModel: convo.element
                            )
                            Divider()
                        }
                    }
                }
                .navigationTitle(Text("Messages"))
            }
        }
    }
}

#Preview {
    Views.MessagesList()
}
