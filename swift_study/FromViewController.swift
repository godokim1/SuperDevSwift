//
//  FromViewController.swift
//  swift_study
//
//  Created by 김민수 on 2018. 12.30.
//  Copyright © 2018년 FOX. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    //point01
    @IBOutlet var name: UITextField!
    @IBOutlet var age: UITextField!
    @IBOutlet var marriage: UISwitch!
    @IBOutlet var skillLevel: UISlider!
    @IBOutlet var stepFamilly: UIStepper!
    @IBOutlet var marriageText: UILabel!
    @IBOutlet var famillyText: UILabel!

    //point02
    @IBAction func switchMarriage(_ sender: UISwitch) {
        if sender.isOn == true {
            self.marriageText.text = "기혼"
        } else {
            self.marriageText.text = "미혼"
        }
    }
    
    //point03
    @IBAction func stepFamilly(_ sender: UIStepper) {
        self.famillyText.text = "\(Int(sender.value))명"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as? FormResultViewController
        resultVC?.name = self.name.text
        resultVC?.age = self.age.text
        resultVC?.marriage = self.marriage.isOn
        resultVC?.skillLevel = self.skillLevel.value
        resultVC?.familly = Int(self.famillyText.text!)
    }
}
