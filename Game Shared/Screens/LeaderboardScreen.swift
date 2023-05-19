//
//  LeaderboardScreen.swift
//  Game
//
//  Created by Александр Касьянов on 19.05.2023.
//  Copyright © 2023 Szymon Lorenz. All rights reserved.
//

import SwiftUI

struct LeaderboardScreen: View {
    private let leaderBoardData = [
        "Player 1 : 1000000 points",
        "Player 2 : 500000 points",
        "Player 3 : 300000 points",
        "Player 4 : 100000 points",
        "Player 5 : 50000 points"
    ]

    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            VStack {
                Text("LEADERS")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.bottom, 5)
                ForEach(leaderBoardData, id: \.self) { player in
                    Text(player)
                        .foregroundColor(.black)
                }
            }
            .frame(width: 200, height: 200)
        }
    }
}

struct LeaderboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardScreen()
    }
}

