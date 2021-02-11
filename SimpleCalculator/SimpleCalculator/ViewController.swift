//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Işıl Aktürk on 6.01.2021.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBAction func sumButton(_ sender: Any) {
        
        if let stNumber1 = Int(firstNumber.text!) {
            if let stNumber2 = Int(secondNumber.text!) {
                
                let stResult = stNumber1 + stNumber2
                result.text = String(stResult)
        
          }
       }
    }
    
    @IBAction func minusButton(_ sender: Any) {
        if let stNumber1 = Int(firstNumber.text!) {
            if let stNumber2 = Int(secondNumber.text!) {
                
                let stResult = stNumber1 - stNumber2
                result.text = String(stResult)
        
          }
       }
    }
 
    @IBAction func multiplyButton(_ sender: Any) {
        if let stNumber1 = Int(firstNumber.text!) {
            if let stNumber2 = Int(secondNumber.text!) {
                
                let stResult = stNumber1 * stNumber2
                result.text = String(stResult)
        
          }
       }
    }
    
    @IBAction func divideButton(_ sender: Any) {
        if let stNumber1 = Int(firstNumber.text!) {
            if let stNumber2 = Int(secondNumber.text!) {
                
                let stResult = stNumber1 / stNumber2
                result.text = String(stResult)
        
          }
       }
    }
    
}
