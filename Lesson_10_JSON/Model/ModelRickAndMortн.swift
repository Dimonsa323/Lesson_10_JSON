//
//  ModelRickAndMortн.swift
//  Lesson_10_JSON
//
//  Created by Дима Губеня on 10.08.2022.
//

import Foundation



struct RickAndMortyModel: Decodable {
    let results: [Heroes]
}

struct Heroes: Decodable {
    let name: String
    let status: String
    let species: String
    let gender: String
    let origin, location: OriginAndLocation
    let image: String
}

struct OriginAndLocation: Decodable {
    let name: String
    let url: String
}
