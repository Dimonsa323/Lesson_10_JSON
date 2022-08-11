//
//  RickAndMortyPresenter.swift
//  Lesson_10_JSON
//
//  Created by Дима Губеня on 10.08.2022.
//

import Foundation
import UIKit

    // MARK: - Presenter Protocol

protocol RickAndMortyPresenterProtocol {
    func showFilms(view: UIViewController)
}

    // MARK: - Class

class RickAndMortyPresenter {
    
}

    // MARK: - Extension

extension RickAndMortyPresenter: RickAndMortyPresenterProtocol {
    func showFilms(view: UIViewController) {
        let presenter = InfoPersonsPresenter()
        let vc = InfoPersonsVC(presenter: presenter)
        view.navigationController?.pushViewController(vc, animated: true)
    }
}
