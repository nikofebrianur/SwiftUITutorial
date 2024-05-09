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
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Image(systemName: "globe")
                    .foregroundColor(Color.red)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, it's Niko Febrianur")
                    .font(.title)
                HStack() {
                    Text("I'm learning Swift UI now")
                        .font(.subheadline)
                    Spacer()
                    Text("Ntappss")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About me")
                    .font(.title2)
                Text("this is description about me")
            }
            .padding()
            
            Spacer()
        }
        
        
        
        
    }
}

#Preview {
    ContentView()
}
