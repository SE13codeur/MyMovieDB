//
//  MovieCell.swift
//  MyMovieDB
//
//  Created by SSS on 28/11/2021.
//

import SwiftUI

struct MovieCell: View {
    var body: some View {
        
        HStack {
//            @todo: Image {}
            VStack {
                HStack {
                    VStack {
                        Text("Titre")
                        Text("Saison + Types")
                    }
                    Text("Note")
                }
                Text("Descriptif")
            }
        }
            
    }
}

struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell()
            .previewLayout((.sizeThatFits))
    }
}
