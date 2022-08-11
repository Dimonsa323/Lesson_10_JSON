//
//  ExtraInfoVC.swift
//  Lesson_10_JSON
//
//  Created by Дима Губеня on 10.08.2022.
//

import UIKit

class ExtraInfoVC: UIViewController {

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

        
    }
}
