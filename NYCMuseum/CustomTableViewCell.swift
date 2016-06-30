//
//  CustomTableViewCell.swift
//  NYCMuseum
//
//  Created by Wei Xia on 6/29/16.
//  Copyright © 2016 Wei Xia. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var MuseumName: UILabel!
    @IBOutlet weak var MuseumeType: UILabel!
    @IBOutlet weak var MuseumeLocation: UILabel!
    @IBOutlet weak var MusumeImage: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
