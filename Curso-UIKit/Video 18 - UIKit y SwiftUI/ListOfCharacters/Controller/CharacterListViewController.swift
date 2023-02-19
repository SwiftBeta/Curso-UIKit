//
//  ViewController.swift
//  Architecture_MVC
//
//  Created by Home on 3/8/22.
//

import UIKit
import SwiftUI

final class CharacterListViewController: UIViewController {
    var mainView: CharactersListView { self.view as! CharactersListView }
    
    private var tableViewDataSource: ListOfCharactersTableViewDataSource?
    private var tableViewDelegate: ListOfCharactersTableViewDelegate?
    let apiClient = ListOfCharactersAPIClient()
            
    override func loadView() {
        view = CharactersListView()
        tableViewDelegate = ListOfCharactersTableViewDelegate()
        tableViewDataSource = ListOfCharactersTableViewDataSource(tableView: mainView.charactersTableView)
        
        mainView.charactersTableView.delegate = tableViewDelegate
        mainView.charactersTableView.dataSource = tableViewDataSource
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "UIKit y SwiftUI"
        
        tableViewDelegate?.didTapOnCell = { index in
            print("Index \(index)")
            // Present New View Controller
            guard let dataSource = self.tableViewDataSource else {
                return
            }
            let characterModel = dataSource.characters[index]
            let viewController = UIHostingController(rootView: CharacterDetailSwiftUIView(model: characterModel))
            self.present(viewController, animated: true)
        }
        
        Task {
            let characters = await apiClient.getListOfCharacters().results
            tableViewDataSource?.set(characters: characters)
        }
    }
}

