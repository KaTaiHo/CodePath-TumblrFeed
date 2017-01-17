//
//  PhotoCell.swift
//  realTumblrFeed
//
//  Created by Ka Tai Ho on 1/16/17.
//  Copyright © 2017 SDLtest. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var PhotoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
