//
//  ViewController.swift
//  ContactApp
//
//  Created by Сергей Иванчихин on 12.04.2022.
//

import UIKit

class ContactsListViewController: UITableViewController {
    
    var data: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        navigationItem.leftBarButtonItem = editButtonItem
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = data[indexPath.row]
        content.text = person.fullName
        content.secondaryText = String(person.phoneNumber)
        content.image = UIImage(named: person.avatar)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfoVC = segue.destination as? PersonInfoViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let person = data[indexPath.row]
        personInfoVC.person = person
    }
}

