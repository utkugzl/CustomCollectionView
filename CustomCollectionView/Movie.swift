//
//  Movie.swift
//  CustomCollectionView
//
//  Created by Utku Güzel on 30.06.2023.
//

import Foundation

class Movie {
    
    var movieID: Int?
    var movieName: String?
    var moviePictureName: String?
    var moviePrice: Double?
    
    init(movieID: Int? = nil, movieName: String? = nil, moviePictureName: String? = nil, moviePrice: Double? = nil) {
        self.movieID = movieID
        self.movieName = movieName
        self.moviePictureName = moviePictureName
        self.moviePrice = moviePrice
    }
}
