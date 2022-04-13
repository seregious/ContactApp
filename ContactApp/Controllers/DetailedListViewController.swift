//
//  DetailedListViewController.swift
//  ContactApp
//
//  Created by Сергей Иванчихин on 12.04.2022.
//

import UIKit

class DetailedListViewController: UITableViewController {
    
    var data: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        data.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        data[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = data[indexPath.row]
        
        if indexPath.row == 0 {
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "candybarphone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
