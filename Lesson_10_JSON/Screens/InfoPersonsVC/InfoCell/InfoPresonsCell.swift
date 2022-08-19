//
//  InfoPresonsCell.swift
//  Lesson_10_JSON
//
//  Created by Дима Губеня on 11.08.2022.
//

import UIKit

class InfoPresonsCell: UICollectionViewCell {
    
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak var heroImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    func config(with model: Heroes) {
        titleLabel.text = model.name
    
        DispatchQueue.global().async {
            guard let imageURL = URL(string: model.image) else { return }
            guard let imageData = try? Data(contentsOf: imageURL) else { return }
    
        DispatchQueue.main.async {
            self.heroImageView.image = UIImage(data: imageData)
        }
        
    }
}
}

extension InfoPresonsCell {
 func setupUI() {
        backgroundColor = .gray
        layer.cornerRadius = 16
    }
}
