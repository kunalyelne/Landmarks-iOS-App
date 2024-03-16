//
//  CircleImage.swift
//  Landmarks
//
//  Created by Kunal Yelne on 16/03/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.gray, lineWidth: 2)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
