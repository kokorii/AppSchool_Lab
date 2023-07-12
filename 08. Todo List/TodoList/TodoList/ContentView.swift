//
//  ContentView.swift
//  TodoList
//
//  Created by 아라 on 2023/07/05.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var taskStore: TaskStore = TaskStore()
    @State var newTask: String = ""
    
    var body: some View {
        NavigationStack {
            // 1번째 방법
            //            List(taskStore.tasks) { task in
            //                HStack {
            //                    Text(task.content)
            //                        .font(.title3)
            //                    Spacer()
            //                    Button {
            //                        taskStore.deleteTask(content: task.content)
            //                    } label: {
            //                        Text("완료")
            //                            .font(.title3)
            //                    }
            //                }
            //            }
            //            .navigationTitle(Text("해야할 일 들"))
            
            // 2번째 방법
            //            List {
            //                ForEach(taskStore.tasks) { task in
            //                    Text(task.content)
            //                        .font(.title3)
            //
            //                }
                            // swipe 기본
            //                .onDelete {
            //                    indexSet in taskStore.tasks.remove(atOffsets: indexSet)
            //                }
            //            }
            //            .navigationTitle(Text("해야할 일 들"))
            
           // 3번째 방법
            List {
                ForEach(taskStore.tasks) { task in
                    Text(task.content)
                        .font(.title3)
                }
                .swipeActions {
                    // 버튼 여러개 추가 가능
                    Button(role : .destructive){
                        print("Delete")
                    }
                    label : {
                        Label("Delete", systemImage: "trash")
                    }
                    Button(){
                        print("Test")
                    }
                    label : {
                        Label("Test", systemImage: "archivebox.fill")
                    }
                    .tint(.yellow)
                    Button(){
                        print("Share")
                    }
                    label : {
                        Label("Share", systemImage: "square.and.arrow.up.fill")
                    }
                    .tint(.blue)
                }
            }
            .navigationTitle(Text("해야할 일 들"))
            
            
            TextField(text: $newTask) {
                Text("새로운 항목을 추가해주세요")
            }
            .padding(20)
            
            Button {
                taskStore.addTask(content: newTask)
                newTask = ""
            } label: {
                Text("항목 추가")
                    .font(.title2).bold()
            }
            
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
