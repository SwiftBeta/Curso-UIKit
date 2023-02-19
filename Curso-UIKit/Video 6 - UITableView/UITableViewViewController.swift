//
//  ViewController.swift
//  UIKit6-UITableView
//
//  Created by Home on 25/3/22.
//

import UIKit

struct Device {
    let title: String
    let imageName: String
}

class UITableViewViewController: UIViewController {
    private var dataSource: SwiftBetaTableViewDataSource?
    private var delegate: SwiftBetaTableViewDelegate?
    
    override func loadView() {
        let tableView = UITableView()
        self.dataSource = SwiftBetaTableViewDataSource(dataSource: allMyDevices)
        self.delegate = SwiftBetaTableViewDelegate()
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.register(SwiftBetaCustomCell.self, forCellReuseIdentifier: "SwiftBetaCustomCell")
        view = tableView
        
        title = "UITableView"
    }
}

