//
//  ViewController.swift
//  chalja
//
//  Created by Manik on 2017-05-26.
//  Copyright © 2017 Livelhiood Project. All rights reserved.
//

import UIKit

class educationViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var professionFromPrevious: UILabel!
    
    @IBOutlet weak var managerialFromPrevious: UILabel!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    // For second question
    
    @IBOutlet weak var country: UILabel!
    
    @IBOutlet weak var countryAnswer: UITextField!
    
    @IBOutlet weak var answerCountry: UITextField!
    
    @IBAction func toStep4(_ sender: UIButton) {
        performSegue(withIdentifier: "segue3", sender: self)

    }
    let education = ["None", "Middle School", "High School", "College/Diploma", "University"]
    var prof = String()
    var manage = String()
    
    //Getting From Previous
    override func viewDidLoad() {
        super.viewDidLoad()
        
        professionFromPrevious.text = prof
        managerialFromPrevious.text = manage
        
    }
    
    //Passing on 3 labels to Next screen: 2 professions and 1 education
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var passToAspiration = segue.destination as! aspirationViewController
        passToAspiration.professionprev = professionFromPrevious.text!
        passToAspiration.manageprev = managerialFromPrevious.text!
        passToAspiration.educationprev = label.text!
    }

    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return education[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return education.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = education[row]
    }
    
    @IBAction func login(_ sender: UIButton) {
        self.country.resignFirstResponder()
            }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

