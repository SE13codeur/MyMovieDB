//
//  MovieDetailHeaderView.swift
//  MyMovieDB
//
//  Created by SSS on 15/12/2021.
//

import SwiftUI
import Kingfisher

struct MovieDetailHeaderView: View {
    
    let imageURL: URL?
    let title: String
    let seasonCount: Int
    let genres: [String]
    let rating: Float
    
    var body: some View {
        VStack{
            ZStack  {
                KFImage(imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                HStack {
                    VStack {
                        Text(title)
                        Text("\(seasonCount) episodes")
                            .foregroundColor(Color.white.opacity(0.5))
                            .font(.caption)
                            .lineLimit(1)
                    }
                    //Note
                }
            }
            // Description
            
        }
    }
}

struct MovieDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailHeaderView(imageURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/eyTu5c8LniVciRZIOSHTvvkkgJa.jpg"),
                              title: "Bones",
                              seasonCount: 3,
                              genres: ["Crime, Drama"],
                              rating: 8.1)
            .previewLayout(.sizeThatFits)

    }
}
