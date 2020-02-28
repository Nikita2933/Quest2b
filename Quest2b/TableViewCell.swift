//
//  TableViewCell.swift
//  Quest2
//
//  Created by Никита on 20.01.2020.
//  Copyright © 2020 Nikita. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {


    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var exercise: Exercise?
    func initCell(exercise: Exercise) {
        self.exercise = exercise
        
        imageview.image = exercise.image
        label.text = exercise.name
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
