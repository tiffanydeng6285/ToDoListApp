//
//  ViewController.swift
//  ToDoListApp
//
//  Created by Girls Who Code on 7/11/19.
//  Copyright © 2019 Girls Who Code. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var inputTaskTextField: UITextField!
    @IBAction func handleAddTaskButtonPress(_ sender: Any) {
        addNewTask()
    }
    func addNewTask(){
        if(inputTaskTextField.text != ""){
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newTask = Task(context:context) 
            newTask.taskName = inputTaskTextField?.text
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            print(newTask.taskName!)  //for testing purposes only
            inputTaskTextField.text = ""
            inputTaskTextField.resignFirstResponder()
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

