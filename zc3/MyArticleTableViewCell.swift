//
//  MyArticleTableViewCell.swift
//  zc3
//
//  Created by TongGuwei on 15/11/2.
//  Copyright © 2015年 TongGuwei. All rights reserved.
//

import UIKit

class MyArticleTableViewCell: UITableViewCell {

    @IBOutlet var articleTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
