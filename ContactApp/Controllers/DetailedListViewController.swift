//
//  DetailedListViewController.swift
//  ContactApp
//
//  Created by Сергей Иванчихин on 12.04.2022.
//

import UIKit

class DetailedListViewController: UITableViewController {
    
    let data = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        1//data.personsList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(data.count)"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = data[indexPath.row]
        
        content.text = person.fullName
        content.secondaryText = person.email + " " + String(person.phoneNumber)
        cell.contentConfiguration = content
        return cell
    }
}
