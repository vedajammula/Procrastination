//
//  CountdownViewController.swift
//  Procrastination
//
//  Created by veda jammula on 7/17/18.
//  Copyright © 2018 Safia & Veda. All rights reserved.
//

import Foundation

import UIKit

class CountdownViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
  //  var tasks = [Task]()
    
    var multipleTimers: [Int]?
    
    var timer = Timer()
    var index = 0
    
    var multipleAssignments: [String]?
    

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var taskTextField: UITextField!
    
    
    // let titleLabel =
    //  @IBOutlet weak var titleLabel: UILabel!
  //  var recievedString: String = ""
    
    @IBOutlet weak var continueOutlet: UIButton!
    
    
    @IBAction func continueButton(_ sender: UIButton) {
        if index >= (tasks.count) {
            return
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counter), userInfo: nil, repeats: true)
        continueOutlet.isHidden = true
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        continueOutlet.isHidden = true
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counter), userInfo: nil, repeats: true)
        
        
       //  titleLabel.text = recievedString
    }
    
    @objc func counter()
    {
        tasks[index].sliderMaxTime -= 1
        timeLabel.text = String(tasks[index].sliderMaxTime) + " seconds"
        
        if (tasks[index].sliderMaxTime == 0) {
            index += 1 
            timer.invalidate()
            continueOutlet.isHidden = false
        }
    }
    
    
}
    

