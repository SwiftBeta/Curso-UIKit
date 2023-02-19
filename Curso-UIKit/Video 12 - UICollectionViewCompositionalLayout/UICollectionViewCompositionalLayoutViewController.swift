//
//  UICollectionViewCompositionalLayoutViewController.swift
//  Curso-UIKit
//
//  Created by Home on 19/2/23.
//

import Foundation
import UIKit

let home: [UICollectionViewCompositionalLayoutViewController.Device] = [
    .init(title: "Laptop", imageName: "laptopcomputer"),
    .init(title: "Mac mini", imageName: "macmini"),
    .init(title: "Mac Pro", imageName: "macpro.gen3"),
    .init(title: "Pantallas", imageName: "display.2"),
    .init(title: "Apple TV", imageName: "appletv")
]

let office: [UICollectionViewCompositionalLayoutViewController.Device] = [
    .init(title: "Laptop", imageName: "laptopcomputer"),
    .init(title: "Mac mini", imageName: "macmini"),
    .init(title: "Mac Pro", imageName: "macpro.gen3"),
]

class UICollectionViewCompositionalLayoutViewController: UIViewController {
    struct Device: Hashable {
        let id: UUID = UUID()
        let title: String
        let imageName: String
    }
    
    lazy var swiftBetaCollectionView: UICollectionView = {
        let configuration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        let layout = UICollectionViewCompositionalLayout.list(using: configuration)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    lazy var datasource: UICollectionViewDiffableDataSource<Int, UICollectionViewCompositionalLayoutViewController.Device> = {
        let deviceCell = UICollectionView.CellRegistration<UICollectionViewListCell, Device> { cell, indexPath, model in
            var listContentConfiguration = UIListContentConfiguration.cell()
            listContentConfiguration.text = model.title
            listContentConfiguration.image = UIImage(systemName: model.imageName)
            cell.contentConfiguration = listContentConfiguration
        }
        
        let datasource = UICollectionViewDiffableDataSource<Int, UICollectionViewCompositionalLayoutViewController.Device>(collectionView: swiftBetaCollectionView) { collectionView, indexPath, model in
            return collectionView.dequeueConfiguredReusableCell(using: deviceCell,
                                                                for: indexPath,
                                                                item: model)
        }
        
        return datasource
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swiftBetaCollectionView.backgroundColor = .green
        
        title = "UICollectionViewCompositionalLayout"
        
        view.addSubview(swiftBetaCollectionView)
        
        NSLayoutConstraint.activate([
            swiftBetaCollectionView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            swiftBetaCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            swiftBetaCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            swiftBetaCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        var snapshot = datasource.snapshot()
        snapshot.appendSections([0, 1])
        snapshot.appendItems(home, toSection: 0)
        snapshot.appendItems(office, toSection: 1)
        datasource.apply(snapshot)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            snapshot.appendItems([.init(title: "New Device", imageName: "appletv")], toSection: 0)
            snapshot.appendItems([.init(title: "New Device 2", imageName: "appletv")], toSection: 0)
            self.datasource.apply(snapshot)
        }
    }
}
