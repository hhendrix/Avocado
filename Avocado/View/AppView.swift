//
//  AppView.swift
//  Avocado
//
//  Created by Harry Lopez on 3/05/22.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Avocados")
                })
            
            ContentView()
                .tabItem({
                    Image("tabicon-book")
                    Text("Avocados")
                })
            
            RipeningStagesView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Avocados")
                })
            
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("Settings")
                })
        }// TABVIEW
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
