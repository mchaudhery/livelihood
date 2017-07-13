//
//  ViewController.swift
//  chalja
//
//  Created by Manik on 2017-05-26.
//  Copyright © 2017 Livelhiood Project. All rights reserved.
//

import UIKit

class secViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var label: UILabel!
   
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var profession: UILabel!
    @IBAction func toStep3(_ sender: UIButton) {
        performSegue(withIdentifier: "segue2", sender: self)

    }
    
    
    
    @IBOutlet weak var professionFromPrevious: UILabel!
    var professionString = String()
    
    let professions = ["Yes", "No"]
    //Getting previous pass
    override func viewDidLoad() {
        super.viewDidLoad()

        professionFromPrevious.text = professionString

            }
    //Making next pass
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var passToeducation = segue.destination as! educationViewController
        passToeducation.prof = profession.text!
        passToeducation.manage = label.text!
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return professions[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return professions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = professions[row]
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

