//
//  ViewController.swift
//  chalja
//
//  Created by Manik on 2017-05-26.
//  Copyright © 2017 Livelhiood Project. All rights reserved.
//

import UIKit

class aspirationViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var profession1: UITextField!
    
    @IBOutlet weak var pickerView1: UIPickerView!
    
    @IBOutlet weak var profession2: UITextField!
    
    @IBOutlet weak var pickerView2: UIPickerView!

    @IBOutlet weak var profession3: UITextField!
    
    @IBOutlet weak var pickerView3: UIPickerView!
    
    @IBAction func toStep5(_ sender: UIButton) {
        performSegue(withIdentifier: "segue4", sender: self)
        
    }
    // To Accept passes
    
    @IBOutlet weak var profession: UILabel!
    
    @IBOutlet weak var manage: UILabel!
    
    @IBOutlet weak var education: UILabel!
    
    let age = ["Accountant","Advertiser","Artist", "Bartender", "Bookkeeper", "Call Centre agent","Carpenter","Chemist","Clerk","Consultant","Driver","Electrician","Farmer", "Food Industry", "House Keeper","Janitor","Journalist","LockSmith","Mechanic","Plumber", "Server"]
    var Gender = ["Accountant","Advertiser","Artist", "Bartender", "Bookkeeper", "Call Centre agent","Carpenter","Chemist","Clerk","Consultant","Driver","Electrician","Farmer", "Food Industry", "House Keeper","Janitor","Journalist","LockSmith","Mechanic","Plumber", "Server"]
    var profession3Data = ["Accountant","Advertiser","Artist", "Bartender", "Bookkeeper", "Call Centre agent","Carpenter","Chemist","Clerk","Consultant","Driver","Electrician","Farmer", "Food Industry", "House Keeper","Janitor","Journalist","LockSmith","Mechanic","Plumber", "Server"]
    var professionprev = String()
    var manageprev = String()
    var educationprev = String()
    //Getting previous passes i.e. assigning the values to labels
    override func viewDidLoad() {
        super.viewDidLoad()
        profession.text = professionprev
        manage.text = manageprev
        education.text = educationprev
        
    }
    
    //Passing To Experience
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var passToExperience = segue.destination as! experienceViewController
        passToExperience.professionprev = profession.text!
        passToExperience.manageprev = manage.text!
        passToExperience.educationprev = education.text!
        passToExperience.aspiration1 = profession1.text!
        passToExperience.aspiration2 = profession2.text!
        passToExperience.aspiration3 = profession3.text!

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows : Int = age.count
        if pickerView == pickerView2 {
            
            countrows = self.Gender.count
        }
        
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == pickerView1 {
            
            let titleRow = age[row]
            
            return titleRow
            
        }
            
        else if pickerView == pickerView2{
            let titleRow = Gender[row]
            
            return titleRow
        }
        else if pickerView == pickerView3{
            let titleRow = profession3Data[row]
            
            return titleRow
        }
        
        return ""
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerView1 {
            self.profession1.text = self.age[row]
           // self.pickerView1.isHidden = true
        }
            
        else if pickerView == pickerView2{
            self.profession2.text = self.Gender[row]
           // self.pickerView2.isHidden = true
            
        }
        else if pickerView == pickerView3{
            self.profession3.text = self.profession3Data[row]
           // self.pickerView3.isHidden = true
            
        }
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == self.profession1){
           self.pickerView1.isHidden = false
            
        }
        else if (textField == self.profession2){
            self.pickerView2.isHidden = false
            
        }
        else if (textField == self.profession3){
            self.pickerView3.isHidden = false
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



