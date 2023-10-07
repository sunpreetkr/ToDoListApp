//
//  User.swift
//  ToDoList
//
//  Created by Sunpreet Kaur on 6/10/2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
