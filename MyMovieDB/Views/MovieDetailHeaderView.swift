//
//  MovieDetailHeaderView.swift
//  MyMovieDB
//
//  Created by SSS on 15/12/2021.
//

import SwiftUI
import Kingfisher

struct MovieDetailHeaderView: View {
    
    let viewModel: MovieDetailHeaderViewModel
    
    var body: some View {
        VStack{
            ZStack(alignment: .bottom) {
                KFImage(viewModel.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(viewModel.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("\(viewModel.seasonCount) seasons" + " | " + viewModel.genres.joined(separator: " • "))
                            .foregroundColor(Color.white.opacity(0.6))
                            .font(.footnote)
                    }
                    Spacer()
                    CircleProgressBar(progress: viewModel.rating)
                        .frame(width: 45, height: 45)
                        .padding(2.5)
                }
                .padding()
                .padding(.top, 80)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [.clear,
                                                    Color(red: 22/255, green: 33/255, blue: 55/255)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            }
        }
    }
}

struct MovieDetailHeaderView_Previews: PreviewProvider {
    
    static let viewModel = MovieDetailHeaderViewModel(
        imageURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/eyTu5c8LniVciRZIOSHTvvkkgJa.jpg"),
        title: "Bones",
        seasonCount: 3,
        genres: ["Crime", "Drama"],
        rating: 8.1
    )
    
    static var previews: some View {
        MovieDetailHeaderView(viewModel: viewModel)
            .previewLayout(.sizeThatFits)

    }
}
