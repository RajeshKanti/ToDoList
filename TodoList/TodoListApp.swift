//
//  TodoListApp.swift
//  TodoList
//
//  Created by Rajesh Ghosh on 2023-02-17.
//

import SwiftUI

/*
 MVVM Architechure
 
 M = Model
 V = UI/View
 VM = View Model
 
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(.stack)
            .environmentObject(listViewModel)
        }
    }
}
