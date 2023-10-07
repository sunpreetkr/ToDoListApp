//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Sunpreet Kaur on 5/10/2023.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
