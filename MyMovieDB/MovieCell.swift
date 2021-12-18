//
//  MovieCell.swift
//  MyMovieDB
//
//  Created by SSS on 28/11/2021.
//

import SwiftUI
import Kingfisher

struct MovieCell: View {
    
    let viewModel: MovieCellViewModel
    
    var body: some View {
        
        HStack {
            KFImage(viewModel.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 150)
                .clipped()
                .cornerRadius(8.1)
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading, spacing: 8.1) {
                        Text(viewModel.title)
                            .font(.title2)
                            .fontWeight(.semibold)
                        Text("\(viewModel.seasonCount) seasons" + " | " + viewModel.genres.joined(separator: " • "))
                            .foregroundColor(Color.white.opacity(0.55))
                            .font(.caption)
                            .lineLimit(1)
                    }
                    Spacer()
                    CircleProgressBar(progress: viewModel.rating)
                        .frame(width: 45, height: 45)
                        .padding(2.5)
                }
                Text(viewModel.description)
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
    
    static let viewModel = MovieCellViewModel(
        imageURL: URL(
            string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mpgDeLhl8HbhI03XLB7iKO6M6JE.jpg"),
        title: "Bones",
        seasonCount: 3,
        genres: ["Crime", "Drama"],
        rating: 8.1,
        description: "Dr. Temperance Brennan and her colleagues at the Jeffersonian's Medico-Legal Lab assist Special Agent Seeley Booth with murder investigations when the remains are so badly decomposed, burned or destroyed that the standard identification methods are useless."
    )
    
    static var previews: some View {
        MovieCell(viewModel: viewModel)
            .previewLayout((.sizeThatFits))
    }
}
