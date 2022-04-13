//
//  DataManager.swift
//  ContactApp
//
//  Created by Сергей Иванчихин on 13.04.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
        
    let firstNames: Set = ["Daniela", "Serhan", "Jessa", "Jaala", "Ariadna", "Zerah", "Vera", "Luigsech", "Lutgardis", "Shaun", "Zilla", "Radka", "Guorthigirn", "Andebert", "Shafaqat"]
    let secondNames: Set = ["Wynne", "Joshi", "Bosque", "Ongaro", "Radic", "Caoindealbhain", "Carson", "Nieddu", "Clery", "Belmonte", "Antonsen", "Danielson", "Porras", "Hanley", "Lowry"]
    let avatars: Set = ["avatar1", "avatar2", "avatar3", "avatar4", "avatar5", "avatar6", "avatar7", "avatar8", "avatar9", "avatar10", "avatar11", "avatar12", "avatar13", "avatar14", "avatar15"]
    
    private init() {}
}
