//
//  ViewController.swift
//  Quest2
//
//  Created by Никита on 18.02.2020.
//  Copyright © 2020 Nikita. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    

    @IBOutlet weak var imageVIEW: UIImageView!

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var infoLabel: UILabel!
     
    
    var exercise: Exercise?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = exercise?.name
        imageVIEW.image = exercise?.image
        infoLabel.text = exercise?.info
        
        
    }
}
