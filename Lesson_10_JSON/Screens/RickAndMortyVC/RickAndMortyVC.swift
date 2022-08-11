//
//  RickAndMortyVC.swift
//  Lesson_10_JSON
//
//  Created by Дима Губеня on 10.08.2022.
//

import UIKit

    // MARK: - RickAndMortyVC

class RickAndMortyVC: UIViewController {

    // MARK: - Properties
    
    private let presenter: RickAndMortyPresenterProtocol
    
    // MARK: - Init
    
    init(presenter: RickAndMortyPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    // MARK: - IBAction
    
    @IBAction func nextScreenButton() {
        presenter.showFilms(view: self)
    }
}

    // MARK: - Private Extension

private extension RickAndMortyVC {
}
