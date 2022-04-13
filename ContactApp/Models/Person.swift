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
        let data = DataManager()
        let range = 0...(data.firstNames.count - 1)
        for _ in range {
            let range = 0...(data.firstNames.count - 1)
            let randomNumberFirstName = Int.random(in: range)
            let randomNumberSecondName = Int.random(in: range)
            let randomNumberImage = Int.random(in: range)
            let person = Person(
                firstName: data.firstNames[randomNumberFirstName],
                secondName: data.secondNames[randomNumberSecondName],
                avatar: data.avatars[randomNumberImage]
            )
            personsList.append(person)
            data.firstNames.remove(at: randomNumberFirstName)
            data.secondNames.remove(at: randomNumberSecondName)
            data.avatars.remove(at: randomNumberImage)
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

class DataManager {
        
    var firstNames = ["Daniela", "Serhan", "Jessa", "Jaala", "Ariadna", "Zerah", "Vera", "Luigsech", "Lutgardis", "Shaun", "Zilla", "Radka", "Guorthigirn", "Andebert", "Shafaqat"]
    var secondNames = ["Wynne", "Joshi", "Del Bosque", "Ongaro", "Radić", "Caoindealbháin", "Carson", "Nieddu", "O'Clery", "Belmonte", "Antonsen", "Danielson", "Porras", "Hanley", "Lowry"]
    var avatars = ["avatar1", "avatar2", "avatar3", "avatar4", "avatar5", "avatar6", "avatar7", "avatar8", "avatar9", "avatar10", "avatar11", "avatar12", "avatar13", "avatar14", "avatar15"]
    
    init() {
        
    }
}

 
