//
//  CalculatorButtonController.swift
//  swift_study
//
//  Created by 김민수 on 2018. 12.30.
//  Copyright © 2018년 FOX. All rights reserved.
//
import UIKit

enum Operaation:String {
    case plus = "+"
    case minus = "-"
    case times = "*"
    case divided = "/"
    case equal = "="
    case reset = "AC"
    case null = "null"
}

class CalculatorButtonController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var prevValue : String = ""
    var nextValue : String = ""
    var nowValue : String = ""
    var resultValue : String = ""
    var currentOparation : Operaation = .null
   
    var firstNumber : Double = 0
    var finalNumber : Double = 0
    var sign : String = ""
    
    var plus : String = "+"
    var minus : String = "-"
    var times : String = "*"
    var divided : String = "/"
    var equal : String = "="
    var reset : String = "AC"
    
    @IBOutlet var numberLabel: UILabel!
    
    @IBAction func clacButton(_ sender: UIButton) {
        if nowValue.count <= 8 {
            nowValue += "\(sender.tag)"
            numberLabel.text = nowValue
        }
        
    }
    
    @IBAction func plusPressed(_ sender: UIButton) {
        oparation(.plus)
    }
    @IBAction func resetPressed(_ sender: UIButton) {
        prevValue = ""
        nowValue = ""
        resultValue = ""
        numberLabel.text = "0"
        currentOparation = .null
    }
    @IBAction func minusPressed(_ sender: UIButton) {
        oparation(.minus)
    }
    @IBAction func timesPressed(_ sender: UIButton) {
        oparation(.times)
    }
    @IBAction func dividedPressed(_ sender: UIButton) {
        oparation(.divided)
    }
    @IBAction func equalPressed(_ sender: UIButton) {
        oparation(.equal)
    }
    @IBAction func dotPressed(_ sender: UIButton) {
        nowValue += "."
        numberLabel.text = nowValue
    }
    
    func oparation(_ oparation: Operaation) {
        if currentOparation != .null {
            if nowValue != "" {
                nextValue = nowValue
                nowValue = ""
               
                if currentOparation == .plus {
                    resultValue = "\(Double(prevValue)! + Double(nextValue)!)"
                } else if currentOparation == .minus {
                    resultValue = "\(Double(prevValue)! - Double(nextValue)!)"
                } else if currentOparation == .times {
                    resultValue = "\(Double(prevValue)! * Double(nextValue)!)"
                } else if currentOparation == .divided {
                    resultValue = "\(Double(prevValue)! / Double(nextValue)!)"
                }
                
                prevValue = resultValue
                numberLabel.text = prevValue
            }
            
            currentOparation = oparation
        } else  {
            prevValue = nowValue
            nowValue = ""
            currentOparation = oparation
        }
    }
}
