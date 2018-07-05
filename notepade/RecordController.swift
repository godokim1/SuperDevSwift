//
//  RecordController.swift
//  notepade
//
//  Created by 김민수 on 2018. 6.18.
//  Copyright © 2018년 FOX. All rights reserved.
//

import UIKit

class RecordController: UIViewController {
    // MARK: - variable
    @IBOutlet var RecordViewText: UITextView!
    var MemoData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let MemoNumber = UserDefaults.standard.object(forKey: "MemoNumber") as! Int
        MemoData = UserDefaults.standard.object(forKey: "MemoData") as! [String]
        
        if MemoNumber == -1 {
            RecordViewText.text = "..."
        } else {
            RecordViewText.text = MemoData[MemoNumber]
        }
      

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Action
    @IBAction func SaveBtn(_ sender: UIStoryboardSegue) {
        let MemoNumber = UserDefaults.standard.object(forKey: "MemoNumber") as! Int
        
        if MemoNumber == -1 {
            MemoData.insert(RecordViewText.text, at: 0)
        } else {
            MemoData.remove(at: MemoNumber)
            MemoData.insert(RecordViewText.text, at: MemoNumber)
        }
        UserDefaults.standard.set(MemoData, forKey: "MemoData")
        
//        self.navigationController?.popViewController(animated: true)

//        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    @IBAction func BackBtn(_ sender: UIStoryboardSegue) {
        self.navigationController?.popViewController(animated: true)
//        self.navigationController?.popToRootViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
