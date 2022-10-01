//
//  ViewController.swift
//  assignment5-attraction-UITableView
//
//  Created by Parinya Termkasipanich on 1/10/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var attractionView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        attractionView.dataSource = self
        attractionView.delegate = self

    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attraction_config.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.item)
        guard let ModalVC = storyboard?.instantiateViewController(withIdentifier: "ModalViewController") as? ModalViewController else {return}
        ModalVC.rowID = indexPath.item
        ModalVC.name = attraction_config[indexPath.item]["name"]!
        
        ModalVC.modalPresentationStyle = .popover
        
        present(ModalVC, animated: true)
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = attractionView.dequeueReusableCell(withIdentifier: "AttractionCell_ID", for: indexPath) as! AttractionCell
        cell.config(img: attraction_config[indexPath.item]["image"]!, name: attraction_config[indexPath.item]["name"]!)

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(90)
    }
}
