//
//  InfoPersonsVC.swift
//  Lesson_10_JSON
//
//  Created by Дима Губеня on 10.08.2022.
//

import UIKit

    // MARK: - InfoPresonsVC

class InfoPersonsVC: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Properties
    
    private let presenter: InfoPersonsPresenterProtocol
    
    // MARK: - Init
    
    init(presenter: InfoPersonsPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        presenter.fetchInfo()
    }
}

// MARK: - Private Extension

private extension InfoPersonsVC {
    func setupUI() {
        setupCollectionView()
        setupNavigationController()
        presenter.fetchInfo()
    }
    
    func setupNavigationController() {
        title = "Rick And Morty"
    }
    
    func setupCollectionView() {
        collectionView.showsVerticalScrollIndicator = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(.init(nibName: String(describing: InfoPresonsCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: InfoPresonsCell.self))
    }
}

extension InfoPersonsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let model = presenter.rickAndMorty[indexPath.item]
        presenter.showFilms(view: self, model: model)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        presenter.rickAndMorty.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: InfoPresonsCell.self), for: indexPath) as! InfoPresonsCell
    
        let heroes = presenter.rickAndMorty[indexPath.item]
        cell.config(with: heroes )
        
        return cell
    }
}

extension InfoPersonsVC: UICollectionViewDelegateFlowLayout {
    
}
