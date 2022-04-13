//
//  Person.swift
//  ContactApp
//
//  Created by Сергей Иванчихин on 12.04.2022.
//

import Foundation
import UIKit

struct Person {
    let firstName, secondName, avatar: String
    
    var phoneNumber: String {
        numberFormat()
    }
    
    var fullName: String {
        firstName + " " + secondName
    }
    var email: String {
        secondName.lowercased() + "@mail.ru"
    }
    
    static func getPersonList() -> [Person] {
        var personsList = [Person]()
        let data = DataManager.shared

        for (firstName, (secondName, avatar)) in zip(data.firstNames, zip(data.secondNames, data.avatars)) {
            let person = Person(
                firstName: firstName,
                secondName: secondName,
                avatar: avatar
            )
            
            personsList.append(person)
        }
        return personsList
    }
    
    private func numberFormat() -> String {
        let phoneNumber = String(Int.random(in: 89010000000...89999999999))
        var formattedNumber = ""
        for number in phoneNumber {
            switch formattedNumber.count {
            case 1, 5, 9, 12:
                formattedNumber.append("-")
                fallthrough
            default:
                formattedNumber.append(number)
            }
        }
        return formattedNumber
    }
}

 
