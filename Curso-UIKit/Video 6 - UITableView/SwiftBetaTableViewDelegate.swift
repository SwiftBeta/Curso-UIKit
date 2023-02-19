//
//  SwiftBetaTableViewDelegate.swift
//  UIKit6-UITableView
//
//  Created by Home on 25/3/22.
//

import Foundation
import UIKit

final class SwiftBetaTableViewDelegate: NSObject, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = house[indexPath.row]
        print("CELL: \(model.title)")
    }
}
