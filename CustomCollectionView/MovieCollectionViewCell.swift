//
//  MovieCollectionViewCell.swift
//  CustomCollectionView
//
//  Created by Utku Güzel on 30.06.2023.
//

import UIKit

protocol MovieCollectionViewCellProtocol {
    func addToWishList(indexPath: IndexPath)
}

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var moviePriceLabel: UILabel!
    
    var cellProtocol: MovieCollectionViewCellProtocol?
    var indexPath: IndexPath?
    
    
    @IBAction func addToBasket(_ sender: UIButton) {
        
        cellProtocol?.addToWishList(indexPath: indexPath!)
        
    }
    
    
}
