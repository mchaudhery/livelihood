//
//  resultViewController.swift
//  chalja
//
//  Created by Manik on 2017-05-30.
//  Copyright © 2017 Livelhiood Project. All rights reserved.
//

import UIKit

let electricianSkills: Set<String> = ["organized", "high school level math", "communication", "mechanical ability", "teamwork", "basic computer skills", "interpret drawings", "problem solving", "apply logic and reason"]

let plumberSkills: Set<String> = ["communication", "high school level math", "lifting techniques", "mechanical ability", "teamwork", "basic computer skills", "interpret drawings", "problem solving"]

let foodIndustrySkills: Set<String> = ["presentation", "teamwork", "communication", "basic computer skills", "meticulous", "operate machines"]

let carpenterSkills: Set<String> = ["communication", "high school level math", "communication", "mechanical ability", "teamwork", "basic computer skills", "interpret drawings", "problem solving", "lifting techniques"]

let mechanicSkills: Set<String> = ["communication", "high school level math", "precision", "mechanical ability", "teamwork", "problem solving", "creativity", "basic computer skills", "design skills"]

let serverSkills: Set<String> = ["communication", "polite", "disciplined","salesmanship","presentation", "teamwork","well dressed", "composure"]

let barTenderSkills: Set<String> = ["communication","well dressed","good memory", "salesmanship", "friendly", "presentation", "composure", "problem solving", "lifting techniques"]

var accountantSkills: Set<String> = ["organization", "basic computer skills", "time management", "salesmanship", "adaptability", "communication", "leadership","analytical","bookkeeping","mathematical skills", "teamwork"]

var callCentreSkills: Set<String> = ["patient", "teamwork", "creativity", "communication","problem solving","good memory", "salesmanship", "friendly", "presentation", "composure"]

var farmerSkills: Set<String> = ["communication", "polite", "disciplined","salesmanship","presentation", "teamwork"]

var journalistSkills: Set<String> = ["writing", "teamwork", "communication"]

var advertiserSkills: Set<String> = ["creativity", "communication", "leadership", "teamwork", "marketing", "time management"]

var chemistSkills: Set<String> = ["high school level math", "precision", "analytical","bookkeeping","mathematical skills","basic computer skills","communication"]

var clerkSkills: Set<String> = ["precision","creativity","analytical","basic mathematics"]


class bhaiViewController: UIViewController {
    
    @IBOutlet weak var profession: UILabel!
    
    @IBOutlet weak var manage: UILabel!
    
    @IBOutlet weak var education: UILabel!
    
    @IBOutlet weak var aspiration1: UILabel!
    
    @IBOutlet weak var aspiration2: UILabel!
    
    @IBOutlet weak var aspiration3: UILabel!
    
    @IBOutlet weak var experience: UILabel!
    
    @IBOutlet weak var match1: UILabel!
    
    @IBOutlet weak var match2: UILabel!
    
    @IBOutlet weak var match3: UILabel!
    
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var image3: UIImageView!
    
    @IBOutlet weak var prof: UILabel!
    var professionprev = String()
    var manageprev = String()
    var educationprev = String()
    var asp1 = String()
    var asp2 = String()
    var asp3 = String()
    var score: Double = 0
    var exp = String()
    
 /*   @IBAction func suggestions(_ sender: UIButton) {
                    performSegue(withIdentifier: "other", sender: self)
        
}*/
    
    
    
    func skillsMatch(profession: Set<String>, aspiration1: Set<String>)->Int{
        
        let set1:Set<String> = profession
        let set2:Set<String> = aspiration1
        let set3:Set<String> = set1.intersection(set2)
        
        let skillsScore:Int = 3*set3.count
        return skillsScore
        
    }
    func skillsMatch2(profession: Set<String>, aspiration2: Set<String>)->Int{
        
        let set1:Set<String> = profession
        let set2:Set<String> = aspiration2
        let set3:Set<String> = set1.intersection(set2)
        
        let skillsScore:Int = 3*set3.count
        return skillsScore
        
    }
    func skillsMatch3(profession: Set<String>, aspiration3: Set<String>)->Int{
        
        let set1:Set<String> = profession
        let set2:Set<String> = aspiration3
        let set3:Set<String> = set1.intersection(set2)
        
        let skillsScore:Int = 3*set3.count
        return skillsScore
        
    }
    
    func currentProfScore(userProfession: Set<String>)->Int{
        
        var skillScore1: Int = 0
        if(aspiration1.text == "Plumber"){
            skillScore1 = skillsMatch(profession: userProfession, aspiration1: plumberSkills)
        }
        else if(aspiration1.text == "Carpenter"){
            skillScore1 = skillsMatch(profession: userProfession, aspiration1: carpenterSkills)
        }
        else if(aspiration1.text == "Food Industry"){
            skillScore1 = skillsMatch(profession:userProfession, aspiration1: foodIndustrySkills)
        }
        else if(aspiration1.text == "Server"){
            skillScore1 = skillsMatch(profession: userProfession, aspiration1: serverSkills)
        }
        else if(aspiration1.text == "Bartender"){
            skillScore1 = skillsMatch(profession: userProfession, aspiration1: barTenderSkills)
        }
        else if(aspiration1.text == "Mechanic"){
            skillScore1 = skillsMatch(profession: userProfession, aspiration1: mechanicSkills)
        }
        else if(aspiration1.text == "Call Centre agent"){
            skillScore1 = skillsMatch(profession: userProfession, aspiration1: callCentreSkills)
        }
        else if(aspiration1.text == "Accountant"){
            skillScore1 = skillsMatch(profession: userProfession, aspiration1: accountantSkills)
        }
        else if(aspiration1.text == "Farmer"){
            skillScore1 = skillsMatch(profession: userProfession, aspiration1: farmerSkills)
        }
        else if(aspiration1.text == "Journalist")
        {
            skillScore1 = skillsMatch(profession: userProfession, aspiration1: journalistSkills)
        }
        return skillScore1
    }
    
    func barImage(totalScore: Int){
        
    }
 override func viewDidLoad() {
        super.viewDidLoad()
        // I can send all the not required labels to the back of the image lol
        profession.text = professionprev
        manage.text = manageprev
        education.text = educationprev
        aspiration1.text = asp1
        aspiration2.text = asp2
        aspiration3.text = asp3
        experience.text = exp
        var professionEntered: String
        var totalScore1: Int = 0
        var skillScore1: Int = 0
        var score2: Int = 0
        var score3: Int = 0
        var managementScore: Int
        var educationScore: Int = 0
        var experienceScore: Int = 0
        var totalScore3: Int = 0
         var totalScore2: Int = 0
        //NUMBER THE SKILLS IN AN EXCEL SHEETS AND THEN USE NUMERICAL ARRAY INSTEAD
        //BASICALLY MAKE A DATABASE FOR YOUR APPLICATION
        /*totalScore = 7
         if totalScore == 7{
         image1.image = UIImage(named: "bar60")
         }
         if (totalScore == 0)
         {
         image1.image = UIImage(named: "bar60")
         
         }
         */
        var Score1: Int = 0
        
        //MARK: SKILLS SCORE
        prof.text = profession.text
        match1.text = aspiration1.text
        match2.text = aspiration2.text
        match3.text = aspiration3.text
        if(profession.text == "Electrician")
        {
             Score1 = currentProfScore(userProfession: electricianSkills)
        }
        else if(profession.text == "Plumber" )
        {
            Score1 = currentProfScore(userProfession: plumberSkills)
        }
        else if(profession.text == "Carpenter" )
        {
            Score1 = currentProfScore(userProfession: carpenterSkills)
        }
        else if(profession.text == "Server")
        {
            Score1 = currentProfScore(userProfession: serverSkills)
        }
        else if(profession.text == "Bartender")
        {
            Score1 = currentProfScore(userProfession: barTenderSkills)
        }
        else if(profession.text == "Mechanic")
        {
            Score1 = currentProfScore(userProfession:mechanicSkills)
        }
        else if(profession.text == "Journalist")
        {
            Score1 = currentProfScore(userProfession:journalistSkills)
        }
        else if(profession.text == "Accountant")
        {
            Score1 = currentProfScore(userProfession:accountantSkills)
        }
        else if(profession.text == "Farmer")
        {
            Score1 = currentProfScore(userProfession:farmerSkills)
        }
        else if(profession.text == "Call Centre Agent")
        {
            Score1 = currentProfScore(userProfession:callCentreSkills)
        }
        else {
            Score1 = 5 //For the sake of demo
        }
        
        //MARK: MANAGEMENT SCORE
        if(manage.text == "Yes"){
            managementScore = 10
        }
        else
        {
            managementScore = 0
        }
        
        //MARK: EDUCATION SCORE
        if(education.text == "None")
        {
            educationScore = 0
        }
        else if(education.text == "Middle School")
        {
            educationScore = 5
        }
        else if(education.text == "High School")
        {
            educationScore = 10
        }
        else if(education.text == "College/Diploma")
        {
            educationScore = 15
        }
        else if(education.text == "University")
        {
            educationScore = 20
        }
        
        
        //MARK: EXPERIENCE SCORE
        
        if(experience.text == "0-2")
        {
            experienceScore = 0
        }
        else if(experience.text == "2-5")
        {
            experienceScore = 10
        }
        else  if(experience.text == "5-10")
        {
            experienceScore = 20
        }
        else  if(experience.text == "10-20")
        {
            experienceScore = 30
        }
        else  if(experience.text == "20+")
        {
            experienceScore = 40
        }
    
        totalScore1 = Score1 + educationScore + experienceScore + managementScore
        
       /*
        
        if(totalScore1<=30){
         image1.image = UIImage(named: "BAR30")
         }
        print("Total score is\(totalScore1)")
        if(totalScore1>=40&&totalScore1<45)
        {
            image1.image = UIImage(named: "bar40")
        }
        else if(totalScore1>=45&&totalScore1<50)
        {
            image1.image = UIImage(named: "bar45")
        }
        else if(totalScore1>=50&&totalScore1<55)
        {
            image1.image = UIImage(named: "bar50")
        }
        else if(totalScore1>=55&&totalScore1<60)
        {
            image1.image = UIImage(named: "bar55")
        }
        else if(totalScore1>=60&&totalScore1<65)
        {
            image1.image = UIImage(named: "bar60")
        }
        else if(totalScore1>=65&&totalScore1<70)
        {
            image1.image = UIImage(named: "bar65")
        }
        else if(totalScore1>=70&&totalScore1<75)
        {
            image1.image = UIImage(named: "bar70")
        }
        else if(totalScore1>=75&&totalScore1<80)
        {
            image1.image = UIImage(named: "bar75")
        }
        else if(totalScore1>=80&&totalScore1<85)
        {
            image1.image = UIImage(named: "bar80")
        }
        else if(totalScore1>=85&&totalScore1<90)
        {
            image1.image = UIImage(named: "bar85")
        }
        else if(totalScore1>=90&&totalScore1<95)
        {
            image1.image = UIImage(named: "bar90")
        }
        else if(totalScore1>=95&&totalScore1<100)
        {
            image1.image = UIImage(named: "bar95")
        }
        
      */
    
    image1.image = UIImage(named: "bar80")
    
    //MARK: MATCH 2
        
    if(profession.text == "Electrician")
    {
        score2 = currentProfScore(userProfession: electricianSkills)
    }
    else if(profession.text == "Plumber" )
    {
        score2 = currentProfScore(userProfession: plumberSkills)
    }
    else if(profession.text == "Carpenter" )
    {
        score2 = currentProfScore(userProfession: carpenterSkills)
    }
    else if(profession.text == "Server")
    {
        score2 = currentProfScore(userProfession: serverSkills)
    }
    else if(profession.text == "Bartender")
    {
        score2 = currentProfScore(userProfession: barTenderSkills)
    }
    else if(profession.text == "Mechanic")
    {
        score2 = currentProfScore(userProfession:mechanicSkills)
    }
    else if(profession.text == "Journalist")
    {
        score2 = currentProfScore(userProfession:journalistSkills)
    }
    else if(profession.text == "Accountant")
    {
        score2 = currentProfScore(userProfession:accountantSkills)
    }
    else if(profession.text == "Farmer")
    {
        score2 = currentProfScore(userProfession:farmerSkills)
    }
    else if(profession.text == "Call Centre Agent")
    {
        score2 = currentProfScore(userProfession:callCentreSkills)
    }

    else {
            score2 = 15 //For the sake of demo
        }
    
        //MARK: MANAGEMENT SCORE
        if(manage.text == "Yes"){
            managementScore = 10
        }
        else
        {
            managementScore = 0
        }
        
        //MARK: EDUCATION SCORE
        if(education.text == "None")
        {
            educationScore = 0
        }
        else if(education.text == "Middle School")
        {
            educationScore = 5
        }
        else if(education.text == "High School")
        {
            educationScore = 10
        }
        else if(education.text == "College/Diploma")
        {
            educationScore = 15
        }
        else if(education.text == "University")
        {
            educationScore = 20
        }
        print("Education score \(educationScore)")
        
        //MARK: EXPERIENCE SCORE
        
        if(experience.text == "0-2")
        {
            experienceScore = 0
        }
        else if(experience.text == "2-5")
        {
            experienceScore = 10
        }
        else  if(experience.text == "5-10")
        {
            experienceScore = 20
        }
        else  if(experience.text == "10-15")
        {
            experienceScore = 30
        }
        else  if(experience.text == "15-20")
        {
            experienceScore = 40
        }
        
        print("Exp Score \(experienceScore)")
    
        
        totalScore2 = score2 + educationScore + experienceScore + managementScore
        
      /*
        
        if(totalScore2<=30){
         image2.image = UIImage(named: "bar80")
         }
        print("Total score 2 is\(totalScore2)")
        if(totalScore2>=40&&totalScore2<45)
        {
            image2.image = UIImage(named: "bar40")
        }
        else if(totalScore2>=45&&totalScore2<50)
        {
            image2.image = UIImage(named: "bar45")
        }
        else if(totalScore2>=50&&totalScore2<55)
        {
            image2.image = UIImage(named: "bar50")
        }
        else if(totalScore2>=55&&totalScore2<60)
        {
            image2.image = UIImage(named: "bar55")
        }
        else if(totalScore2>=60&&totalScore2<65)
        {
            image2.image = UIImage(named: "bar60")
        }
        else if(totalScore2>=65&&totalScore2<70)
        {
            image2.image = UIImage(named: "bar65")
        }
        else if(totalScore2>=70&&totalScore2<75)
        {
            image2.image = UIImage(named: "bar70")
        }
        else if(totalScore2>=75&&totalScore2<80)
        {
            image2.image = UIImage(named: "bar75")
        }
        else if(totalScore2>=80&&totalScore2<85)
        {
            image2.image = UIImage(named: "bar80")
        }
        else if(totalScore2>=85&&totalScore2<90)
        {
            image2.image = UIImage(named: "bar85")
        }
        else if(totalScore2>=90&&totalScore2<95)
        {
            image2.image = UIImage(named: "bar90")
        }
        else if(totalScore2>=95&&totalScore2<100)
        {
            image2.image = UIImage(named: "bar95")
        }
     
        */

        
        //MARK: Match 3
        
    image2.image = UIImage(named: "bar55")
 
    
    if(profession.text == "Electrician")
    {
        score3 = currentProfScore(userProfession: electricianSkills)
    }
    else if(profession.text == "Plumber" )
    {
        score3 = currentProfScore(userProfession: plumberSkills)
    }
    else if(profession.text == "Carpenter" )
    {
        score3 = currentProfScore(userProfession: carpenterSkills)
    }
    else if(profession.text == "Server")
    {
        score3 = currentProfScore(userProfession: serverSkills)
    }
    else if(profession.text == "Bartender")
    {
        score3 = currentProfScore(userProfession: barTenderSkills)
    }
    else if(profession.text == "Mechanic")
    {
        score3 = currentProfScore(userProfession:mechanicSkills)
    }
    else if(profession.text == "Journalist")
    {
        score3 = currentProfScore(userProfession:journalistSkills)
    }
    else if(profession.text == "Accountant")
    {
        score3 = currentProfScore(userProfession:accountantSkills)
    }
    else if(profession.text == "Farmer")
    {
        score3 = currentProfScore(userProfession:farmerSkills)
    }
    else if(profession.text == "Call Centre Agent")
    {
        score3 = currentProfScore(userProfession:callCentreSkills)
    }
        
    else{
            score3 = 10 //For the sake of demo
        }
        
        //MARK: MANAGEMENT SCORE
        if(manage.text == "Yes")
        {
            managementScore = 10
        }
        else if(manage.text == "No")
        {
            managementScore = 0
        }
        //MARK: EDUCATION SCORE
        if(education.text == "None")
        {
            educationScore = 0
        }
        else if(education.text == "Middle School")
        {
            educationScore = 5
        }
        else if(education.text == "High School")
        {
            educationScore = 10
        }
        else if(education.text == "College/Diploma")
        {
            educationScore = 15
        }
        else if(education.text == "University")
        {
            educationScore = 20
        }
        
        
        //MARK: EXPERIENCE SCORE
        
        if(experience.text == "0-2")
        {
            experienceScore = 0
        }
        else if(experience.text == "2-5")
        {
            experienceScore = 10
        }
        else  if(experience.text == "5-10")
        {
            experienceScore = 20
        }
        else  if(experience.text == "10-15")
        {
            experienceScore = 30
        }
        else  if(experience.text == "15-20")
        {
            experienceScore = 40
        }
        
        
        
        
        //Experience Score
        
        totalScore3 = score3 + educationScore + experienceScore + managementScore
        
        /*
        
        if(totalScore3<=30){
         image3.image = UIImage(named: "BAR30")
         }
        print("Total score 3 is\(totalScore3)")
        if(totalScore3>=40&&totalScore3<45)
        {
            image3.image = UIImage(named: "bar40")
        }
        else if(totalScore3>=45&&totalScore3<50)
        {
            image3.image = UIImage(named: "bar45")
        }
        else if(totalScore3>=50&&totalScore3<55)
        {
            image3.image = UIImage(named: "bar50")
        }
        else if(totalScore3>=55&&totalScore3<60)
        {
            image3.image = UIImage(named: "bar55")
        }
        else if(totalScore3>=60&&totalScore3<65)
        {
            image3.image = UIImage(named: "bar60")
        }
        else if(totalScore3>=65&&totalScore3<70)
        {
            image3.image = UIImage(named: "bar65")
        }
        else if(totalScore3>=70&&totalScore3<75)
        {
            image3.image = UIImage(named: "bar70")
        }
        else if(totalScore3>=75&&totalScore3<80)
        {
            image3.image = UIImage(named: "bar75")
        }
        else if(totalScore3>=80&&totalScore3<85)
        {
            image3.image = UIImage(named: "bar80")
        }
        else if(totalScore3>=85&&totalScore3<90)
        {
            image3.image = UIImage(named: "bar85")
        }
        else if(totalScore3>=90&&totalScore3<95)
        {
            image3.image = UIImage(named: "bar90")
        }
        else if(totalScore3>=95&&totalScore3<100)
        {
            image3.image = UIImage(named: "bar95")
        }
 */
        
    image3.image = UIImage(named: "bar70")
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passToSolution = segue.destination as! suggestionsViewController
        passToSolution.professionPrev = profession.text!
        passToSolution.manage = manage.text!
        passToSolution.edu = education.text!
        passToSolution.exp = experience.text!
    }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    
}
