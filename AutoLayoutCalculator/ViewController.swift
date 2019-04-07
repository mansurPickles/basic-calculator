//
//  ViewController.swift
//  AutoLayoutCalculator
//
//  Created by Brandon Luong on 2/10/19.
//  Copyright © 2019 Brandon Luong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sum : Int = 0
    var str : String = "0"
    var str2 : String = ""
    var Operation : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Screen.text = str
    }

    @IBAction func buttons(_ sender: AnyObject) {
        
        if (str=="0"){
            str = ""
        }
        
        switch sender.tag {
            
        case 0:
            str += "0"
        case 1:
            str += "1"
        case 2:
            str += "2"
        case 3:
            str += "3"
        case 4:
            str += "4"
        case 5:
            str += "5"
        case 6:
            str += "6"
        case 7:
            str += "7"
        case 8:
            str += "8"
        case 9:
            str += "9"
            
        //addition
        case 10:
            str2 = str
            str = "0"
            Operation = "+"
            
        //division
        case 12:
            str2 = str
            str = "0"
            Operation = "-"
            
        //multiplication
        case 13:
            str2 = str
            str = "0"
            Operation = "*"

        //division
        case 14:
            str2 = str
            str = "0"
            Operation = "/"
            
        //mod
        case 15:
            str2 = str
            str = "0"
            Operation = "%"
            
        //clear
        case 17:
            str = "0"
            str2 = ""
        
        //equal
        case 11:
            var x : Int = Int(str2) ?? 0
            var y : Int = Int(str) ?? 0
            
            if (Operation == "+"){
                str = String(x+y)
            }
            
            if (Operation == "*"){
                str = String(x*y)
            }
            
            if (Operation == "-"){
                str = String(x-y)
            }
            
            if (Operation == "%"){
                str = String(x%y)
            }
            
            if (Operation == "/"){
                str = String(x/y)
            }
            
            
        default:
            str = "0"
        }
        
        updateUI()
    }
    
    @IBOutlet weak var Screen: UILabel!
    
    func updateUI(){
        viewDidLoad()
    }
}



