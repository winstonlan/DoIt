//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Winston Lan on 4/29/17.
//  Copyright © 2017 winstonlan. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var previousVC = TasksViewController()
    var task = Task()
    @IBOutlet weak var taskLabel: UILabel!

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
    }
    
}
