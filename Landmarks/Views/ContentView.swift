//
//  ContentView.swift
//  Landmarks
//
//  Created by Kunal Yelne on 16/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
