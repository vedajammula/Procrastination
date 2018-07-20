//
//  SliderCell.swift
//  Procrastination
//
//  Created by veda jammula on 7/17/18.
//  Copyright © 2018 Safia & Veda. All rights reserved.
//

import Foundation

import UIKit

class SliderCell: UITableViewCell {
    var referenceVC: ViewController?
    var index: Int!
    var referenceTaskTitle: CountdownViewController?
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var sliderTimer: UISlider!
    
    
    @IBAction func slider(_ sender: UISlider) {
        referenceVC?.tasks[index].sliderMaxTime = Int(sender.value)
        let time = referenceVC?.tasks[index].sliderMaxTime
        timerLabel.text = String(time!) + " minutes"
    }
    @IBAction func taskTitle(_ sender: UITextField) {
        
    }
    
}
