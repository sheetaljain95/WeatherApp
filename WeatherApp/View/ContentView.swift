//
//  Home.swift
//  WeatherApp
//
//  Created by Sheetal Jain on 07/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader {proxy in
            let topEdge = proxy.safeAreaInsets.top
            Home(topEdge: topEdge)
                .ignoresSafeArea(.all, edges: .top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
