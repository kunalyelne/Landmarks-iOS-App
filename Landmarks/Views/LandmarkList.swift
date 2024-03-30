//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Kunal Yelne on 17/03/24.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var buttonText: String {
        if showFavoritesOnly {
            "Hide Fav"
        } else {
            "Show Fav"
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle("Favorites only", systemImage: showFavoritesOnly ? "star.fill" : "star", isOn: $showFavoritesOnly)
                .labelStyle(.titleAndIcon)
                .contentTransition(.symbolEffect)
                ForEach(filteredLandmarks) {landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.smooth, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
