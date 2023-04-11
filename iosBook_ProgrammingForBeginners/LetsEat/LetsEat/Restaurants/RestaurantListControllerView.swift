//
//  RestaurantListControllerView.swift
//  LetsEat
//
//  Created by Aldair Zamora on 11/4/23.
//

import UIKit

class RestaurantListControllerView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    // outlet
    @IBOutlet var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        return collectionView.dequeueReusableCell(withReuseIdentifier: "restaurantCell", for: indexPath)
    }

    
    
}
