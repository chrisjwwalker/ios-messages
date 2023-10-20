//
//  SettingsView.swift
//  Fake Messages
//
//  Created by Chris J W Walker on 03/10/2023.
//

import SwiftUI

extension Views {
    struct Settings: View {
        var body: some View {
            VStack {
                Image(systemName: "gear")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                Text("Settings")
            }
        }
    }
}

#Preview {
    Views.Settings()
}
