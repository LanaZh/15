//
//  viewController.swift
//  15
//
//

import UIKit


class CollectionViewController: UIViewController {

    var cells = [InfoSetting]()

    let switchView = UISwitch()

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.section == 1 && indexPath.row == 0 {
            cell.accessoryView = switchView
        } else {
            cell.accessoryType = .disclosureIndicator
        }
        var content = cell.defaultContentConfiguration()
        content.image = UIImage()
        
        if indexPath.row == 0 && indexPath.section == 0 {
            content.imageProperties.cornerRadius = 55
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let info = cells[indexPath.section]
        print("Нажата ячейка \(info)")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}



