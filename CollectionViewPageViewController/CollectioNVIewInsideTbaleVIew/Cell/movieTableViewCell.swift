//
//  movieTableViewCell.swift
//  ButtonClickActionCollection
//
//  Created by Demo 01 on 13/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class movieTableViewCell: UITableViewCell {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension movieTableViewCell:UICollectionViewDataSource,UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eData[myCollectionView.tag].imageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? movieCollectionCell
        cell?.image.image = UIImage(named: eData[myCollectionView.tag].imageGallery[indexPath.row])
        return cell!
    }
    
    
}
