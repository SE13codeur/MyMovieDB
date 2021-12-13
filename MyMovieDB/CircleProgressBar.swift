//
//  CircleProgressBar.swift
//  MyMovieDB
//
//  Created by SSS on 13/12/2021.
//

import SwiftUI

struct CircleProgressBar: View {
    
    let progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.white.opacity(0.2), lineWidth: 5.0)
            Circle()
                .trim(from: 0.0, to: CGFloat(min(progress / 10, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color(red: 243/255, green: 119/255, blue: 39/255))
                .rotationEffect(Angle(degrees: 270))
            Text(String(format: "%.1f", progress))
                .foregroundColor(.white)
        }
    }
}

struct CircleProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        CircleProgressBar(progress: 5.5)
            .frame(width: 50, height: 50)
            .padding()
            .background(Color(red: 22/255, green: 33/255, blue: 55/255))
            .previewLayout(.sizeThatFits)
    }
}
