//
//  SecondViewController.swift
//  RentaGallery
//
//  Created by Aleksandr Morozov on 10.03.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    var hero : Hero?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let hero = hero {
            
            // Download full size image
            let defaultLink = "https://api.opendota.com"
            let completeLink = defaultLink + hero.img
            imageView.downloaded(from: completeLink)
            imageView.contentMode = .scaleAspectFit
            
            // Download date
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = "dd.MM.YYYY"
            let result = formatter.string(from: date)
            labelName.text = "Download date: \(result)"
        }
    }

}
