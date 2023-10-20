//
//  ConversationButton.swift
//  Fake Messages
//
//  Created by Chris J W Walker on 18/08/2023.
//

import SwiftUI

extension Components {
    struct ConversationButtonViewModel {
        let initials: String?
        let imageName: String?
        let name: String?
        let number: String
        let lastMessage: String
        let timestamp: String
        let action: () -> Void
    }
    
    struct ConversationButton: View {
        var viewModel: Components.ConversationButtonViewModel
        
        @State var backgroundColour: Color = .white
        @State var selected: Bool = false
        
        var body: some View {
            HStack(alignment: .top) {
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .scaleEffect(0.8)
                    
                    Text(viewModel.initials ?? "")
                        .foregroundStyle(.white)
                }
                
                VStack(alignment: .leading) {
                    Text(viewModel.name ?? viewModel.number)
                        .bold()
                    
                    Text(viewModel.lastMessage)
                }
                
                Spacer()
                
                Text(viewModel.timestamp)
                
                Image(systemName: "chevron.right")
            }
            .frame(height: 70)
            .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10))
            .background(backgroundColour)
            .gesture(
                DragGesture(minimumDistance: 0.0)
                    .onChanged { _ in
                        backgroundColour = .gray
                        selected = true
                    }
                    .onEnded({ value in
                        backgroundColour = .white
                        selected = false
                        viewModel.action()
                    })
            )
        }
    }
}


#Preview {
    Components.ConversationButton(
        viewModel: .init(
            initials: "CW",
            imageName: nil,
            name: "Chris Walker",
            number: "+12456789",
            lastMessage: "Why hello there!",
            timestamp: "Yesterday",
            action: {
                print("Accessing conversation...")
            }
        )
    )
}
