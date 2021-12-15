//
//  ActorCell.swift
//  MyMovieDB
//
//  Created by SSS on 14/12/2021.
//

import SwiftUI
import Kingfisher

struct ActorCell: View {
    
    let url: URL?
    let name: String
    let characterName: String
    
    var body: some View {
        VStack {
            KFImage(url)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            Text(name)
                .font(.footnote)
                .fontWeight(.semibold)
            Text(characterName)
                .font(.caption2)
                .foregroundColor(Color.white.opacity(0.5))
        }
        .fixedSize(horizontal: false, vertical: true)
        .padding(4)
        .foregroundColor(.white)
    }
}

struct ActorCell_Previews: PreviewProvider {
    static var previews: some View {
        ActorCell(url: URL(
                    string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5MgWM8pkUiYkj9MEaEpO0Ir1FD9.jpg"),
                  name: "赵茹珍",
                  characterName: "Song Yeo-wool")
            .frame(width: 200)
            .background(Color(red: 22/255, green: 33/255, blue: 55/255))
            .previewLayout(.sizeThatFits)
    }
}
