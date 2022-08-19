//
//  InfoPresonsPresenter.swift
//  Lesson_10_JSON
//
//  Created by Дима Губеня on 10.08.2022.
//

import Foundation
import UIKit

// MARK: - Presenter Protocol

protocol InfoPersonsPresenterProtocol {
    var rickAndMorty: [Heroes] { get }
    func fetchInfo()
    func showFilms(view: UIViewController, model: Heroes)
    
}

// MARK: - Class

class InfoPersonsPresenter {

    var rickAndMorty: [Heroes] = []
}

// MARK: - Extension

extension InfoPersonsPresenter: InfoPersonsPresenterProtocol {
    func fetchInfo() {
        let stringURL = "https://rickandmortyapi.com/api/character"
        guard let infoURL = URL(string: stringURL) else { return }
        
        URLSession.shared.dataTask(with: infoURL) { data, _, error in
            if let error = error {
                print (error)
            return
            }
                
            guard let data = data else { return }
            
            let decoder = JSONDecoder()
            
            do {
                let rickAndMorty = try decoder.decode(RickAndMortyModel.self, from: data)
                self.rickAndMorty += rickAndMorty.results
                print(rickAndMorty.results)
                
                
            } catch let error {
                print(error.localizedDescription)
        }
        } .resume()
}
    func showFilms(view: UIViewController, model: Heroes) {
        let presenter = ExtraInfoPresenter(model: model )
        let vc = ExtraInfoVC(presenter: presenter)
        view.navigationController?.pushViewController(vc, animated: true)
}
}
