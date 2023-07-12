//
//  Task.swift
//  TodoList
//
//  Created by 아라 on 2023/07/05.
//

import Foundation

struct Task: Identifiable {
    var id: UUID = UUID()
    //var title: String
    var content: String
}
