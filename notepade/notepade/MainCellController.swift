//
//  MainCellController.swift
//  notepade
//
//  Created by 김민수 on 2018. 6.18.
//  Copyright © 2018년 FOX. All rights reserved.
//

import UIKit

class MainCellController: UITableViewCell {
    // MARK: - variable
    var MemoData = [String]()
    
    @IBOutlet weak var TitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

   
}
