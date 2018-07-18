//
//  ViewController.swift
//  Procrastination
//
//  Created by veda jammula on 7/16/18.
//  Copyright © 2018 Safia & Veda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var seconds = 30
    var timer = Timer()
    var multipleTimers = [30]
    var numberOfCells = 1
    var multipleAssignments = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
//    @IBAction func titleAction(_ sender: UITextField) {
//        let tag = sender.tag
//        multipleAssignments[tag] = String(sender.text!)
//    }
    
    @IBAction func addButton(_ sender: UIBarButtonItem) {
        numberOfCells += 1
        multipleTimers.append(30)
        tableView.reloadData()
    }
    
    
    
    
    @IBAction func slider(_ sender: UISlider ) {
        let tag = sender.tag
        
        multipleTimers[tag] = Int(sender.value)
    }
    
    @IBOutlet weak var startOutlet: UIButton!
    @IBAction func start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
        
//        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopUpViewController
//
//        self.addChildViewController(popOverVC)
//        popOverVC.view.frame = self.view.frame
//        self.view.addSubview(popOverVC.view)
//        popOverVC.didMove(toParentViewController: self)
        
        //  sliderOutlet.isHidden = true
          startOutlet.isHidden = true
    }
    
  //  func start() {
  //      return
   // }
    
    
    @objc func counter()
    {
        seconds -= 1
      //  label.text = String(seconds) + "minutes"
        
        if (seconds == 0) {
            timer.invalidate()
            
       //     sliderOutlet.isHidden = false
            startOutlet.isHidden = false
            
        }
    }

    
    @IBOutlet weak var stopOutlet: UIButton!
    @IBAction func stop(_ sender: Any) {
        timer.invalidate()
        seconds = 30
//        sliderOutlet.setValue(30, animated: true)
//        label.text = "30 minutes"
//
   //     sliderOutlet.isHidden = false
        //startOutlet.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfCells
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SliderCell") as! SliderCell
        cell.sliderTimer.tag = indexPath.row
        
        return cell
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        if identifier == "CountdownDisplay" {
            
            
            
            
            let destination = segue.destination as! CountdownViewController
            
            destination.multipleTimers = multipleTimers
            
            
        //    var countdownVC: CountdownViewController = segue.destinationViewController as CountdownViewController
            
          //  destination.recievedString = titleTextField.text
            
        }
    }
}

