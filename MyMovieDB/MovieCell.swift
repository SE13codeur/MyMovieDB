//
//  MovieCell.swift
//  MyMovieDB
//
//  Created by SSS on 28/11/2021.
//

import SwiftUI
import Kingfisher

struct MovieCell: View {
    var body: some View {
        
        HStack {
            KFImage(URL(string:
                            "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mpgDeLhl8HbhI03XLB7iKO6M6JE.jpg"))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150)
                .clipped()
                .cornerRadius(8.1)
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading, spacing: 8.1) {
                        Text("Titre")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Text("Saison + Types")
                            .foregroundColor(Color.white.opacity(0.55))
                            .font(.caption)
                            .lineLimit(1)
                    }
                    Spacer()
                    CircleProgressBar(progress: 5.5)
                        .frame(width: 45, height: 45)
                        .padding(2.5)
                }
                Text("Descriptif")
                    .font(.callout)
                    .fontWeight(.light)
                    .lineLimit(4)
            }
        }
        .padding(8.1)
        .background(Color(red: 22/255, green: 33/255, blue: 55/255))
        .foregroundColor(.white)
            
    }
}

struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell()
            .previewLayout((.sizeThatFits))
    }
}
