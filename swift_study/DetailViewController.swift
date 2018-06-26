//
//  DetailViewController.swift
//  swift_study
//
//  Created by 김민수 on 2018. 12.30.
//  Copyright © 2018년 FOX. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController {
    
    @IBAction func onBack(_ sender: Any) {
        self.pop()
    }
    
    func dismiss() {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    func pop() {
        self.navigationController?.popViewController(animated: true)
    }
}
