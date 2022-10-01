//
//  ModalViewController.swift
//  assignment5-attraction-UITableView
//
//  Created by Parinya Termkasipanich on 2/10/2565 BE.
//

import UIKit

class ModalViewController: UIViewController {

    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    
    var rowID:Int = 0
    var name:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        config()
    }
    
    func config(){
        detailImage.image = UIImage(named: attraction_config[rowID]["image"]!)
        detailLabel.text = name
        detailTextView.text = attraction_config[rowID]["description"]!
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
