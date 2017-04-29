//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Winston Lan on 4/28/17.
//  Copyright © 2017 winstonlan. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information.
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous viewController
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    

}
