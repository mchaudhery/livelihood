//
//  bartender1ViewController.swift
//  chalja
//
//  Created by Manik on 2017-06-13.
//  Copyright © 2017 Livelhiood Project. All rights reserved.
//

import UIKit

class bartender1ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    @IBAction func slider(_ sender: UISlider) {
        label.text = String(Int(sender.value))
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
