//
//  ModelRickAndMortн.swift
//  Lesson_10_JSON
//
//  Created by Дима Губеня on 10.08.2022.
//

import Foundation



struct RickAndMortyModel: Decodable {
    let results: String?
    let name: String?
    let status: String?
    let species: String?
    let gender: String?
    let origin: String?
    let image: String? 
}
//    "results": [
//        {
//          "id": 1,
//          "name": "Rick Sanchez",
//          "status": "Alive",
//          "species": "Human",
//          "type": "",
//          "gender": "Male",
//          "origin": {
//            "name": "Earth",
//            "url": "https://rickandmortyapi.com/api/location/1"
//          },
//          "location": {
//            "name": "Earth",
//            "url": "https://rickandmortyapi.com/api/location/20"
//          },
//          "image": "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
//          "episode": [
//            "https://rickandmortyapi.com/api/episode/1",
//            "https://rickandmortyapi.com/api/episode/2",
//            // ...
//          ],
//          "url": "https://rickandmortyapi.com/api/character/1",
//          "created": "2017-11-04T18:48:46.250Z"
//        },
//        // ...
//      ]
//}
