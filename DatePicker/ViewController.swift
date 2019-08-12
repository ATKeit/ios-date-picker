//
//  ViewController.swift
//  DatePicker
//
//  Created by B.Cheolu on 12/08/2019.
//  Copyright © 2019 B.Cheolu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblCurrentDt: UILabel!
    @IBOutlet weak var lblSelectedDt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let date = Date()
        let currentDt = DateFormatter()
        currentDt.dateFormat = "yyyy-MM-dd HH:mm:ss"
        lblCurrentDt.text = currentDt.string(from: date)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let selectedDt = DateFormatter()
        selectedDt.dateFormat = "yyyy-MM-dd HH:mm:ss"
        lblSelectedDt.text = selectedDt.string(from: datePickerView.date)
    }
    
}

