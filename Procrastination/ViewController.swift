//
//  ViewController.swift
//  Procrastination
//
//  Created by veda jammula on 7/16/18.
//  Copyright © 2018 Safia & Veda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    var seconds = 30
    
//    var tasks = [Task]()
    var tasks = [Task(title: "", time: 60)]
 //   var numberOfTasks = [tasks].count
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var startOutlet: UIButton!
//    @IBOutlet weak var minutesSlider: UISlider!
    @IBOutlet weak var stopOutlet: UIButton!
    

    // MARK: - View Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - IBActions
    
    @IBAction func addButton(_ sender: UIBarButtonItem) {
 //       numberOfCells += 1
  //      tasks.append(([tasks])
        tableView.reloadData()
    }
    
    @IBAction func start(_ sender: Any) {
//        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
    }
    
//    @IBAction func minutesSlider(_ sender: UISlider) {
//        let tag = sender.tag
//
//        multipleTimers[tag] = Int(sender.value)
//    }
//    //    @IBAction func slider(_ sender: UISlider ) {
////            let tag = sender.tag
////
////            multipleTimers[tag] = Int(sender.value)
////
////
////    }
    
    @IBAction func stop(_ sender: Any) {
        
//        sliderCell = SliderCell()
//        sliderCell?.sliderTimer.value = 30
//        sliderCell?.timerLabel.text = "\(sliderCell?.sliderTimer.value ?? 0)"
        
        //        if multipleTimers = [nil] as! [Int] {
        //            let destination = segue.destination as! ViewController
        //        }
        //
        
        clear()
        
        
        //        timer.invalidate()
        //        seconds = 30
        //        sliderOutlet.setValue(30, animated: true)
        //        label.text = "30 minutes"
        //
        //     sliderOutlet.isHidden = false
        //startOutlet.isHidden = false
        startOutlet.isHidden = false
        
    }
        
//        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopUpViewController
//
//        self.addChildViewController(popOverVC)
//        popOverVC.view.frame = self.view.frame
//        self.view.addSubview(popOverVC.view)
//        popOverVC.didMove(toParentViewController: self)
        
        //  sliderOutlet.isHidden = true
    

//    @IBAction func titleAction(_ sender: UITextField) {
//        let tag = sender.tag
//        multipleAssignments[tag] = String(sender.text!)
//    }

  //  func start() {
  //      return
   // }
    
    func resetMinuteSlider() {
        
        
        
    }
    
    
    @objc func counter()
    {
        seconds -= 1
      //  label.text = String(seconds) + "minutes"
        
        if (seconds == 0) {
//            timer.invalidate()
            startOutlet.isHidden = false
            
        }
    }
    
    func clear() {
//        timer.invalidate()
//        seconds = 30
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return } // checking if there was an identifier
        
        if identifier == "CountdownDisplay" { // is checking which segue we initiated
            let destination = segue.destination as! CountdownViewController // creates the instance of the class that we're going to
            destination.tasks = tasks
            
            
//            destination.multipleTimers = multipleTimers
            
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SliderCell") as! SliderCell
        cell.referenceVC = self
        cell.index = indexPath.row
        cell.titleTextField.text = tasks[indexPath.row].title
        
        return cell
        
    }
}






