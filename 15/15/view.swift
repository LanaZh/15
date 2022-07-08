//
//  ViewController.swift
//  15
//
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    private lazy var tableView: UITableView = {
        var tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: indentifire)
        tableView.delegate = self
        return tableView
    }()
    
    private var indentifire = "cell"

    let switchView = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpHierarchy()
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
    
    }
    
    private func setUpHierarchy() {
        view.addSubview(tableView)

    }
   
    func numberOfSections(in tableView: UITableView) -> [InfoSetting] {
        return InfoSetting.moveAlbom()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 1:
            return 4
        case 2:
            return 4
        case 3:
            return 4
        default:
            break
        }
        return 0
    }
    
}
