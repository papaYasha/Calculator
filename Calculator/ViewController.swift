//
//  ViewController.swift
//  Calculator
//
//  Created by Macbook on 6.03.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    private var cOrAC = "AC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        
        guard let number = Double(displayLabel.text!) else {
            fatalError("Cannot convert display label text to a Double")
        }
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayLabel.text = String(number * -1)
            } else if calcMethod == "AC" {
                displayLabel.text = "0"
            } else if calcMethod == "%"{
                displayLabel.text = String(number / 100)
            }
        }
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                
                if numValue == "," {
                    guard let currentDisplayValue = Double(displayLabel.text!) else {
                        fatalError("Cannot convert display label text to a Double")
                    }
                    let isInt = floor(currentDisplayValue) == currentDisplayValue
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }
}

