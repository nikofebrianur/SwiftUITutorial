//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Niko Febrianur on 10/05/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredlandmarks: [Landmark] {
        modelData.landmarks.filter {landmark in
            (!showFavoritesOnly || landmark.isFavorite )}
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                
                ForEach(filteredlandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredlandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark:")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
