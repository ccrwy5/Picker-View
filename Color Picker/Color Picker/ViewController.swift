//
//  ViewController.swift
//  Color Picker
//
//  Created by Chris Rehagen on 10/4/18.
//  Copyright © 2018 Chris Rehagen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!

    var backgroundColor = UIColor.red

    let color = ["Red" : UIColor.red,
                 "Orange" : UIColor.orange,
                 "Yellow": UIColor.yellow,
                 "Green": UIColor.green,
                 "Blue" : UIColor.blue,
                 "Purple": UIColor.purple
                ]
    
    
    func numberOfComponents(in pickerView: UIPickerView)->Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array(color.keys)[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return color.keys.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = Array(color.keys)[row]
        view.backgroundColor = Array(color.values)[row]
        

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

