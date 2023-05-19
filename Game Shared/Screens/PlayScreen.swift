//
//  PlayScreen.swift
//  Game
//
//  Created by Александр Касьянов on 19.05.2023.
//  Copyright © 2023 Szymon Lorenz. All rights reserved.
//

import SwiftUI

struct PlayScreen: View {
    private let games = [
        "Mario",
        "Pacman",
        "TMNT",
        "Adventure Island",
        "Battle Toads"
    ]

    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            VStack {
                Text("PLAY")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.bottom, 5)
                Text("Let's play in: ")
                    .foregroundColor(.black)
                    .padding(.bottom, 3)
                ForEach(games, id: \.self) { game in
                    Text(game)
                        .foregroundColor(.black)
                }
            }
            .frame(width: 200, height: 200)
        }
    }
}

struct PPlayScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlayScreen()
    }
}

