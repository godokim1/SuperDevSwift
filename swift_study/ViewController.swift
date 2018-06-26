//
//  ViewController.swift
//  swift_study
//
//  Created by 김민수 on 2018. 12.30.
//  Copyright © 2018년 FOX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func moveNext(_ sender: Any) {
        let usb = self.storyboard!
        // 이동할 뷰 컨트롤러 객체 생성
        let uvc : UIViewController = (usb.instantiateViewController(withIdentifier: "secondViewController"))
        // 뷰 컨트롤러 이동시 이동 스타일 설정
        uvc.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
        // 뷰 컨트롤러 이동
//        self.present(uvc, animated: true, completion: nil)
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    
    @IBOutlet var testBtn: UIButton!
    
    @IBAction func testFunction(_ sender: Any) {
        self.performSegue(withIdentifier: "goToNextPage", sender: nil)
    }
}

