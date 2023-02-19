//
//  ViewController.swift
//  Curso-UIKit
//
//  Created by Home on 19/2/23.
//

import UIKit

let videos: [Video] = [
    .init(title: "Introducción"),
    .init(title: "Auto Layout (Constraints)"),
    .init(title: "UIButton"),
    .init(title: "UILabel"),
    .init(title: "UIImageView"),
    .init(title: "UITableView"),
    .init(title: "UIStackView"),
    .init(title: "UICollectionView"),
    .init(title: "Navegación Modal"),
    .init(title: "Navegación Push"),
    .init(title: "UISheetPresentationController"),
    .init(title: "UICollectionViewCompositionalLayout"),
    .init(title: "Delegation Pattern"),
    .init(title: "Storyboard"),
    .init(title: "Xibs"),
    .init(title: "Ciclo Vida UIViewController"),
    .init(title: "Animaciones"),
    .init(title: "UIKit con SwiftUI"),
    .init(title: "Borrar Storyboard del Proyecto"),
    .init(title: "Child ViewController"),
]

class MainViewController: UIViewController {
    var coordinatorFlow: CoordinatorFlow?
    
    private let listOfVideosTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfVideosTableView.backgroundColor = .white
        listOfVideosTableView.dataSource = self
        listOfVideosTableView.delegate = self
        
        title = "Curso UIKit"
        
        view.addSubview(listOfVideosTableView)
        
        NSLayoutConstraint.activate([
            listOfVideosTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            listOfVideosTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            listOfVideosTableView.topAnchor.constraint(equalTo: view.topAnchor),
            listOfVideosTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        let model = videos[indexPath.row]
        
        var listContentConfiguration = UIListContentConfiguration.cell()
        listContentConfiguration.text = "Video \(indexPath.row): " + model.title
        
        cell.contentConfiguration = listContentConfiguration
        return cell
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Curso UIKit - Video \(indexPath.row)")
        let showVideoTutorial = VideoType(rawValue: indexPath.row) ?? .introduction
        coordinatorFlow?.navigate(to: showVideoTutorial)
    }
}

