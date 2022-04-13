//
//  PersonInfoViewController.swift
//  ContactApp
//
//  Created by Сергей Иванчихин on 12.04.2022.
//

import UIKit

class PersonInfoViewController: UIViewController {

    
    @IBOutlet weak var avatarLabel: UIImageView!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarLabel.image = UIImage(named: person.avatar)
        firstNameLabel.text = person.firstName
        secondNameLabel.text = person.secondName
        phoneLabel.text = String(person.phoneNumber)
        emailLabel.text = person.email
    }
    


}
