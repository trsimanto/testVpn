//
//  ContentView.swift
//  VpnTest
//
//  Created by REEA on 14/6/23.
//

import SwiftUI
import TunnelKitOpenVPNAppExtension

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
