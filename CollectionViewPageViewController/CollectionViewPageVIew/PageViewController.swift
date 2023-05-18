//
//  PageViewController.swift
//  ButtonClickActionCollection
//
//  Created by Demo 01 on 15/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class PageViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var movieIamge = ["kabir","bholaa","pathaan","kesari"]
   // var currentPage = 0
    @IBOutlet weak var page:UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        page.currentPage = 0
        page.numberOfPages=movieIamge.count
        
    }
    

}


extension PageViewController:UICollectionViewDataSource,UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieIamge.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! cell
        cell.image.image = UIImage(named: movieIamge[indexPath.row])
        cell.image.layer.cornerRadius=50.0
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
         page.currentPage = indexPath.row
    }
}
