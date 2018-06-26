//
//  FormResultViewController.swift
//  swift_study
//
//  Created by 김민수 on 2018. 12.30.
//  Copyright © 2018년 FOX. All rights reserved.
//

import UIKit

class FormResultViewController: UIViewController {
    
    var name : String?
    var age : String?
    var marriage : Bool?
    var skillLevel : Float?
    var familly : Int?
    
    @IBOutlet var uiName: UILabel!
    @IBOutlet var uiAge: UILabel!
    @IBOutlet var uiMarriage: UILabel!
    @IBOutlet var uiSkillLevel: UILabel!
    @IBOutlet var uiFamilly: UILabel!
}
