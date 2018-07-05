//
//  ViewController.swift
//  notepade
//
//  Created by 김민수 on 2018. 6.18.
//  Copyright © 2018년 FOX. All rights reserved.
//

import UIKit

class MainController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var MemoData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//  MemoCell List Length
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MemoData = UserDefaults.standard.object(forKey: "MemoData") as? [String] ?? [String]()
        return MemoData.count
    }
    
//  MemoCell Cell info
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let MemoCell = tableView.dequeueReusableCell(withIdentifier: "MemoCell", for: indexPath) as! MainCellController
        MemoData = UserDefaults.standard.object(forKey: "MemoData") as? [String] ?? [String]()
        
        MemoCell.TitleLabel.text = MemoData[indexPath.row]
        
        return MemoCell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let MemoNumber = indexPath.row
        UserDefaults.standard.set(MemoNumber, forKey: "MemoNumber")
        self.performSegue(withIdentifier: "ToRecord", sender: self)

    }
    
    @IBAction func Write(_ sender: UIButton) {
        UserDefaults.standard.set(-1, forKey: "MemoNumber")
    }
    
}
