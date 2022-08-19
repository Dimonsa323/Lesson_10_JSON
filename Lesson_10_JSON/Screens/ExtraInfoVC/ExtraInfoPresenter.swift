//
//  ExtraInfoPresenter.swift
//  Lesson_10_JSON
//
//  Created by Дима Губеня on 10.08.2022.
//

import Foundation


// MARK: - Presenter Protocol

protocol ExtraInfoPresenterProtocol {

    var model: Heroes { get }
}

// MARK: - Class

class ExtraInfoPresenter {

    let model: Heroes
    
    init(model: Heroes) {
        self.model = model
    }
    
}

// MARK: - Extension

extension ExtraInfoPresenter: ExtraInfoPresenterProtocol {
}
