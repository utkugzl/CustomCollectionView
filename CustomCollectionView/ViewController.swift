//
//  ViewController.swift
//  CustomCollectionView
//
//  Created by Utku Güzel on 30.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var movieList = [Movie]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let m1 = Movie(movieID: 1, movieName: "Django", moviePictureName: "django", moviePrice: 49.99)
        let m2 = Movie(movieID: 2, movieName: "Inception", moviePictureName: "inception", moviePrice: 49.99)
        let m3 = Movie(movieID: 3, movieName: "Interstellar", moviePictureName: "interstellar", moviePrice: 49.99)
        let m4 = Movie(movieID: 4, movieName: "Anadoluda", moviePictureName: "birzamanlaranadoluda", moviePrice: 49.99)
        let m5 = Movie(movieID: 5, movieName: "The Hateful Eight", moviePictureName: "thehatefuleight", moviePrice: 49.99)
        let m6 = Movie(movieID: 6, movieName: "The Pianist", moviePictureName: "thepianist", moviePrice: 49.99)
        
        movieList.append(m1)
        movieList.append(m2)
        movieList.append(m3)
        movieList.append(m4)
        movieList.append(m5)
        movieList.append(m6)
        
 
        let design: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        let totalWidth = collectionView.frame.size.width
        
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        design.itemSize = CGSize(width: (totalWidth-30)/2, height: ((totalWidth-30)/2) * 1.7)
        design.minimumInteritemSpacing = 10
        design.minimumLineSpacing = 25
        
        collectionView.collectionViewLayout = design

    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, MovieCollectionViewCellProtocol {
    
    
    func addToWishList(indexPath: IndexPath) {
        let movie = movieList[indexPath.row]
        
        print("\(movie.movieName!) added to Basket" )
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movieList.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let movie = movieList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        cell.movieImageView.image = UIImage(named: movie.moviePictureName!)
        cell.movieNameLabel.text = movie.movieName
        cell.moviePriceLabel.text = "\(movie.moviePrice!) TL"
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        
        cell.movieImageView.layer.shadowOpacity = 1
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        
        
        return cell
    }
    
    
}

