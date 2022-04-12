//
//  Person.swift
//  ContactApp
//
//  Created by Сергей Иванчихин on 12.04.2022.
//

import Foundation

struct Person {
    let firstName, secondName: String
    let phoneNumber: Int
    
    var fullName: String {
        firstName + " " + secondName
    }
    var email: String {
        secondName.lowercased() + "@mail.ru"
    }
}

class DataManager {

}
