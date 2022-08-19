//
//  ExtraInfoVC.swift
//  Lesson_10_JSON
//
//  Created by Дима Губеня on 10.08.2022.
//

import UIKit

protocol ExtraInfoVCProtocol {
    
}

class ExtraInfoVC: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    
    private let presenter: ExtraInfoPresenterProtocol
    
    init(presenter: ExtraInfoPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

    // MARK: - Private Extension

private extension ExtraInfoVC {
    func setupUI() {
        DispatchQueue.global().async {
            
            guard let imageURL = URL(string: self.presenter.model.image ) else { return }
            guard let imageData = try? Data(contentsOf: imageURL) else { return }
    
        DispatchQueue.main.async {
            self.imageView.image = UIImage(data: imageData)
        }
        }
        nameLabel.text = presenter.model.name
        statusLabel.text = presenter.model.status
        genderLabel.text = presenter.model.gender
        locationLabel.text = presenter.model.location.name
    }
}

extension ExtraInfoVC: ExtraInfoVCProtocol {
    
}
