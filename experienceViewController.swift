//
//  ViewController.swift
//  chalja
//
//  Created by Manik on 2017-05-26.
//  Copyright © 2017 Livelhiood Project. All rights reserved.
//

import UIKit

class experienceViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
   
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    //To get data from previous page
    @IBOutlet weak var profession: UILabel!
    
    @IBOutlet weak var manage: UILabel!
    
    @IBOutlet weak var aspiration: UILabel!
    
    @IBOutlet weak var asp2: UILabel!
    
    @IBOutlet weak var asp3: UILabel!
    
    @IBOutlet weak var education: UILabel!
    @IBAction func toStep6(_ sender: UIButton) {
        performSegue(withIdentifier: "segue7", sender: self)

    }
    var professionprev = String()
    var manageprev = String()
    var educationprev = String()
    var aspiration1 = String()
    var aspiration2 = String()
    var aspiration3 = String()
    let professions = ["0-2", "2-5", "5-10", "10-20", "20+"]
    override func viewDidLoad() {
        super.viewDidLoad()
        profession.text = professionprev
        manage.text = manageprev
        education.text = educationprev
        aspiration.text = aspiration1
        asp2.text = aspiration2
        asp3.text = aspiration3
        
    }
    
    //Passing to Result
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var passToSolution = segue.destination as! bhaiViewController
        passToSolution.professionprev = profession.text!
        passToSolution.manageprev = manage.text!
        passToSolution.educationprev = education.text!
        passToSolution.asp1 = aspiration.text!
        passToSolution.asp2 = asp2.text!
        passToSolution.asp3 = asp3.text!
        passToSolution.exp = label.text!
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

