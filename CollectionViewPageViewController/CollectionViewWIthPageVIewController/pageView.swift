//
//  pageView.swift
//  ButtonClickActionCollection
//
//  Created by Demo 01 on 13/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class pageView: UIViewController {

        var currentcellIndex = 0
    @IBOutlet weak var collectionView: UICollectionView!
    
    var bollywoodImage=["kabir","bholaa","kesari","pathaan","pushpa","rrr","kgf","jumanji","bholaa"]
    
    @IBOutlet weak var mypageController: UIPageControl!
    var timer:Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
        mypageController.numberOfPages = bollywoodImage.count
    }
    
    
    @objc func slideToNext()
    {
        if currentcellIndex < bollywoodImage.count-1
        {
            currentcellIndex = currentcellIndex + 1
        }
        else
        {
            currentcellIndex = 0
        }
        mypageController.currentPage = currentcellIndex
        collectionView.scrollToItem(at: IndexPath(item: currentcellIndex, section: 0), at: .right, animated: true)
    }
    

}


extension pageView:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bollywoodImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! pageCell
        cell.image.image = UIImage(named: bollywoodImage[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
}
