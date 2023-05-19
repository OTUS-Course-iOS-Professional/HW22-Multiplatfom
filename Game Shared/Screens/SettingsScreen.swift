//
//  SettingsScreen.swift
//  Game
//
//  Created by Александр Касьянов on 19.05.2023.
//  Copyright © 2023 Szymon Lorenz. All rights reserved.
//

import SwiftUI

struct SettingsScreen: View {
    private let settings = [
        "Controls",
        "Sound effects",
        "Titles"
    ]

    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            VStack {
                Text("SETTINGS")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.bottom, 10)
                ForEach(settings, id: \.self) { setting in
                    Button(setting, action: { })
                        .foregroundColor(.black)
                        .cornerRadius(10.0)
                        .padding(.bottom, 5)
                }
            }
            .frame(width: 200, height: 200)
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
