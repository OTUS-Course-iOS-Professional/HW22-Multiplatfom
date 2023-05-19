//
//  MainView.swift
//
//  Created by Szymon Lorenz on 9/2/20.
//  Copyright © 2020 Szymon Lorenz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                LeaderboardScreen()
                    .tabItem { Text("Leaderboard") }
                SettingsScreen()
                    .tabItem { Text("Settings") }
                PlayScreen()
                    .tabItem { Text("Play") }
            }
        }
    }
    
    private var scene: some View {
        SceneView(scene: GameScene.newGameScene())
    }
    
    private var hud: some View {
        HStack {
            VStack {
                Spacer()
                Text("Swift UI HUD")
                    .foregroundColor(.red)
                Spacer()
            }
            Spacer()
        }
    }
}
