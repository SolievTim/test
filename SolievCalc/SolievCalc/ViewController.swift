//
//  ViewController.swift
//  SolievCalc
//
//  Created by user on 09.09.2021.
//

import UIKit

class ViewController: UIViewController {
    var operand = ""
    var numberOne = ""
    var numberTwo = ""
    var onScreanSee = ""
    
    @IBOutlet weak var resoultLabel: UILabel!
    
    
    @IBAction func inputNumber(_ sender: UIButton) {
        if operand.isEmpty {
            numberOne += (sender.titleLabel?.text)!
            onScreanSee = numberOne
            resoultLabel.text = onScreanSee
        } else {
            numberTwo += (sender.titleLabel?.text)!
            onScreanSee += (sender.titleLabel?.text)!
            resoultLabel.text = onScreanSee
        }
    }
    
    @IBAction func clearAction(_ sender: UIButton) {
        numberOne = ""
        numberTwo = ""
        operand = ""
        onScreanSee = "0"
        resoultLabel.text = onScreanSee
    }
    
    @IBAction func inputOperand(_ sender: UIButton) {
        operand = (sender.titleLabel?.text)!
        onScreanSee += operand
        resoultLabel.text = onScreanSee
      }
    
    @IBAction func resultAction(_ sender: UIButton) {
        var result = 0.0
        switch operand {
        case "+":
            result = Double(numberOne)! + Double(numberTwo)!
        case "/":
            result = Double(numberOne)! / Double(numberTwo)!
        case "-":
            result = Double(numberOne)! - Double(numberTwo)!
        case "*":
            result = Double(numberOne)! * Double(numberTwo)!
        default:
            break
        }
        if result.truncatingRemainder(dividingBy: 1.0) == 00 {
            resoultLabel.text = String(Int(result))
        } else {
            resoultLabel.text = String(result)
        }
        
    }
}
