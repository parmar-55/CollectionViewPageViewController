//
//  MultipalMovieView.swift
//  ButtonClickActionCollection
//
//  Created by Demo 01 on 13/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

struct EntertainmentApp {
    let sectionType:String
    let imageGallery:[String]
}


var eData = [EntertainmentApp(sectionType: "BollyWood Movies", imageGallery: ["kabir","kesari","pathaan","bholaa"]),
             EntertainmentApp(sectionType: "South Movies", imageGallery: ["kgf","pushpa","rrr","dasara"]),
             EntertainmentApp(sectionType: "HollyWood Movies", imageGallery: ["aveEnd","jumanji","notime","johnWick3"])]


class MultipalMovieView: UIViewController {

    @IBOutlet var tableView:UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}


extension MultipalMovieView:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return eData.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return eData[section].sectionType
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? movieTableViewCell
        
        cell?.myCollectionView.tag =  indexPath.section
        return cell!
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .yellow
        
    }
    
}
