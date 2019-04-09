//
//  ViewController.swift
//  Prime
//
//  Created by dit03 on 2019. 4. 9..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtPrime: UITextField!
    
    @IBOutlet weak var lbCheck: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lbCheck.text = "Please Input Number"
    }

    @IBAction func btnCheck(_ sender: Any) {
        
        var isPrime = true
        var num:Int! = Int(txtPrime.text!)
        
        if (num != 1 && num != 2) {
            for i in 2..<num {
                if(num % i == 0) {
                    isPrime = false
                }
            }
        } else if(num == 1) {
            isPrime = false
        } else {
            isPrime = true
        }
        
        if(isPrime == true) {
            lbCheck.text = "Number is Prime"
            txtPrime.text = ""
        } else {
            lbCheck.text = "Number is Not Prime"
            txtPrime.text = ""
        }
        
    }
    
}

