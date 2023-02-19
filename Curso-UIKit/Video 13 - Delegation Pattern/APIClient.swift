//
//  APIClient.swift
//  UIKit13_DelegationPattern
//
//  Created by Home on 28/5/22.
//

import Foundation

protocol APIClientDelegate: AnyObject {
    func update(pokemons: [PokemonDataModel])
}

struct PokemonDataModel: Decodable {
    let name: String
    let url: String
}

struct PokemonResponseDataModel: Decodable {
    let pokemons: [PokemonDataModel]
    
    enum CodingKeys: String, CodingKey {
        case results
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pokemons = try container.decode([PokemonDataModel].self, forKey: .results)
    }
}

class APIClient {
    deinit {
        print("Deinit APIClient")
    }
    
    weak var delegate: APIClientDelegate?
    
    func getTracks() {
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151")!
        let task = URLSession.shared.dataTask(with: url) { [weak self]
            data, response, error in
            let dataModel = try! JSONDecoder().decode(PokemonResponseDataModel.self, from: data!)
            print("DataModel \(dataModel)")
            self?.delegate?.update(pokemons: dataModel.pokemons)
        }
        task.resume()
    }
}
