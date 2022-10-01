//
//  AttractionCell.swift
//  assignment5-attraction-UITableView
//
//  Created by Parinya Termkasipanich on 2/10/2565 BE.
//

import UIKit

class AttractionCell: UITableViewCell {

    @IBOutlet weak var attractionImage: UIImageView!
    @IBOutlet weak var attractionLabel: UILabel!
    
    func config(img:String,name:String) {
        attractionImage.image = UIImage(named: img)
        attractionLabel.text = name
    }
    
}
