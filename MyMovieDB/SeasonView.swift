//
//  SeasonView.swift
//  MyMovieDB
//
//  Created by SSS on 15/12/2021.
//

import SwiftUI
import Kingfisher


struct SeasonView: View {
    
    let imageURL: URL?
    let seasonNumber: Int
    let episodesCount: Int
    let description: String
    
    var body: some View {
        HStack(spacing: 16) {
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 150)
                .cornerRadius(8.0)
            VStack(alignment: .leading, spacing: 8) {
                VStack (alignment: .leading) {
                    Text("Season \(seasonNumber)")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("\(episodesCount) episodes")
                        .foregroundColor(Color.white.opacity(0.5))
                        .font(.caption)
                        .lineLimit(1)
                }
                Text("\(description)")
                    .font(.callout)
                    .fontWeight(.light)
                    .lineLimit(4)
            }
            Spacer()
        }
        .foregroundColor(.white)
        .padding(8)
    }
}

struct SeasonView_Previews: PreviewProvider {
    static var previews: some View {
        SeasonView(imageURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/eyTu5c8LniVciRZIOSHTvvkkgJa.jpg"),
                   seasonNumber: 5,
                   episodesCount: 22,
                   description: "Dr. Temperance Brennan and her colleagues at the Jeffersonian's Medico-Legal Lab assist Special Agent Seeley Booth with murder investigations when the remains are so badly decomposed, burned or destroyed that the standard identification methods are useless.")
            .background(Color(red: 22/255, green: 33/255, blue: 55/255))
            .previewLayout(.sizeThatFits)

    }
}
