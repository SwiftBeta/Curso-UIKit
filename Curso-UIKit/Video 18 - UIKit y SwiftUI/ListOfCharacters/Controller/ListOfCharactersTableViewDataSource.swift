//
//  ListOfCharactersTableViewDataSource.swift
//  Architecture_MVC
//
//  Created by Home on 4/8/22.
//

import Foundation
import UIKit
import SwiftUI

final class ListOfCharactersTableViewDataSource: NSObject, UITableViewDataSource {
    private let tableView: UITableView
    
    private(set) var characters: [CharacterModel] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    init(tableView: UITableView, characters: [CharacterModel] = []) {
        self.tableView = tableView
        self.characters = characters
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterListCellView", for: indexPath) as! CharacterListCellView
        
        let model = characters[indexPath.row]
        cell.contentConfiguration = UIHostingConfiguration {
            CharacterListSwiftUICellView(model: model)
        }
        
        return cell
    }
    
    func set(characters: [CharacterModel]) {
        self.characters = characters
    }
}
