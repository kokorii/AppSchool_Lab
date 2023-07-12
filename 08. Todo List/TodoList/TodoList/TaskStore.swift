//
//  TaskStore.swift
//  TodoList
//
//  Created by 아라 on 2023/07/05.
//

import Foundation

class TaskStore: ObservableObject {
    @Published var tasks: [Task]
    
    init() {
        self.tasks = [
           // Task(content: "혼공"),
           // Task(content: "2만보 걷기")
        ]
    }
    
    func addTask(content: String) {
        guard content.count > 0 else {
            print("아무런 입력 값 없음")
            return
        }
        
        let task = Task(content: content)
        
        tasks.append(task)
    }
    
    func deleteTask(content: String) {
          // 1번 방법
//        var index: Int = 0
//
//        for temp in tasks {
//            if temp.content == content {
//                tasks.remove(at: index)
//            }
//            index += 1
//        }
        
        // 2번 방법
        for index in 0..<tasks.count {
            if tasks[index].content == content {
                tasks.remove(at: index)
            }
        }
        
        // 3번 방법
        //tasks.removeAll(where: { $0.content == content })
    }
}
