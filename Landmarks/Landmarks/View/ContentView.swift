//
//  ContentView.swift
//  Landmarks
//
//  Created by Niko Febrianur on 09/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LandmarkList()
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
