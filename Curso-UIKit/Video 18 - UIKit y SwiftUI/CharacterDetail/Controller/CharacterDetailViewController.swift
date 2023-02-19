//
//  CharacterDetailViewController.swift
//  Architecture_MVC
//
//  Created by Home on 4/8/22.
//

import UIKit

final class CharacterDetailViewController: UIViewController {

    var mainView: CharacterDetailView { self.view as! CharacterDetailView }
    
    override func loadView() {
        view = CharacterDetailView()
    }
    
    init(characterDetailModel: CharacterModel) {
        super.init(nibName: nil, bundle: nil)
        mainView.configure(characterDetailModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
