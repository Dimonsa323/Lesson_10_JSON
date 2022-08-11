//
//  InfoPresonsCell.swift
//  Lesson_10_JSON
//
//  Created by Дима Губеня on 11.08.2022.
//

import UIKit

class InfoPresonsCell: UICollectionViewCell {
    
    @IBOutlet weak private var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    func config(with title: String) {
        titleLabel.text = title
    }
}
