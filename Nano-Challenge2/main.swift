//
//  main.swift
//  Nano-Challenge2
//
//  Created by Khulood  on 20/05/1443 AH.
//

import Foundation

var UserInput : String = ""

//Constant that have all the days so the user can choice from them
let DaysOfTheWeek = """

[Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday]

"""

    struct ToDoList {
        var ToDoListTask: String!
        var ToDoListDate: String!
        var TodoListTag: String!
        
        func printList() {
            print("Your Task:", self.ToDoListTask,"and it is Due in", self.ToDoListDate, "With Tag", self.TodoListTag)
        }
    }
    //Add task with due date
    let ToDoList1 = ToDoList(ToDoListTask: "ex: Nano-Challenge 2", ToDoListDate: "ex: 29-12-2021", TodoListTag: "Project")
    let ToDoList2 = ToDoList(ToDoListTask: "Hangout with my friends", ToDoListDate: "1-12-2021", TodoListTag: "Self joy")
    //add task with due date and tag to the dictionary
//    let ToDoListsWithDate : [ToDoList] = [ToDoList1, ToDoList2]
    var userToDoList :[ToDoList] = []
    //for addTask func in case 2
    var tasksList : [String : String] = [:]

repeat {
print("**********************")
print("Your To-Do List 📋")
print("**********************")
print("(1). Day")
print("(2). Task with Due Date")
print("(3). Tag")
//print("(4). Delete Task")
print("(4). View Your List")
print("(5). See you ❤️")
print("**********************")
print("Enter Your Choice:")
print("**********************")
    
    


    


if let userChoice = readLine() {
    
    UserInput = userChoice
    
    switch UserInput {
        
    case "1":
        print(DaysOfTheWeek)
        print("-----------------------")
        print("Please Choice A Day")
        let dayOfChoice = readLine()!
        print(dayOfChoice)
        
    case "2":
        print("Please Enter The Task and its Due Date")
        print("-----------------------")
        addTask()
        
    case "3":
        addTag()
        
//    case "4":
//        print("")
//        //deleteTask()
        
    case "4":
        print("Show Your List")
        //yourList()
        
    case "5":
        exit(0)
        //Should exit the CLI if the user select 5-> Supposed show this message (program ended exit code)
        
    default:
        print("Default")

        
        
    
}


}
} while UserInput != "1" || UserInput != "2" || UserInput != "3" || UserInput != "4" || UserInput != "5"



//Case 2
//User Task and Due Date Input


func addTask () {

//repeat {
    
    print("Please Enter The Task")
        if let task = readLine(){
            
            print("please Enter The Due Date")
            
            if let DueDate = readLine() {
                
    
               // let CurrentTask = [task:DueDate]
                tasksList[task] = DueDate
            }
        }
        print(tasksList)
        
}
    
        
//Case 3
//User Tag for the Task
func addTag () {
    
    print("You could add Tag (ex: Projects, Family, Self-care)")
    if let taskTag = readLine() {
        for TodoListTag in userToDoList {
            print(taskTag)
            
        }
        
    }
}
    

//Case 4
//Delete the Task by userchoice
//func deleteTask () {
//    print("Delete Task")
//    if let delTask = readLine() {
//        if let UserInput = Int(delTask) {
//            userToDoList.remove(at: UserInput - 1)
//            print("The Task \(UserInput) was removed. ✅")
//        }
//    }
//
//}

//Case 5
//Show user choisen day with the task, due date, and tag
    func YourList () -> String {
    var yourList = ""
    for ToDoList in userToDoList {
        yourList = ToDoList.ToDoListDate + ToDoList.ToDoListDate + ToDoList.TodoListTag
    }
    
    for ToDoList in userToDoList{
        ToDoList.printList()
    }
    return yourList
}









//} whil
//class ToDoList {
//
//    func Iteam() {
//        print("Please Choice A Day")
//        var dayOfChoice = readLine()
//        print(dayOfChoice)
//
//        print("Please Enter The Task")
//        var nameOfTask = readLine()
//        print(nameOfTask)
//
//
//        print("Please Enter The Due Date")
//        var dateofTask = readLine()
//        print(dateofTask)
//
//        print("You could add Tag")
//        var tagToTask = readLine()
//        print(tagToTask)
//    }
//
//
//}


