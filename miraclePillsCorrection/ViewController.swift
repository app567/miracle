//
//  ViewController.swift
//  miraclePillsCorrection
//
//  Created by Pedro Palacios on 02/01/17.
//  Copyright © 2017 Pedro Palacios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var primerTextField: UITextField!
    @IBOutlet weak var segundoTextField: UITextField!
    
    let states = ["Alaska","Arkansas", "Alabama", "California","Maine","New Yorkk"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        primerTextField.isHidden = true 
        segundoTextField.isHidden = true
    }
    
    
    @IBAction func buyNowBtn(_ sender: Any) {
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        primerTextField.isHidden = false
        segundoTextField.isHidden = false
        
    }
}

