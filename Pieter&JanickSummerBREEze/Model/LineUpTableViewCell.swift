//
//  LineUpTableViewCell.swift
//  Pieter&JanickSummerBREEze
//
//  Created by mobapp12 on 01/02/2019.
//  Copyright © 2019 mobapp12. All rights reserved.
//

import UIKit

class LineUpTableViewCell: UITableViewCell {
    @IBOutlet weak var lblBandName: UILabel!
    @IBOutlet weak var lblTimeStamps: UILabel!
    @IBOutlet weak var imgViewBand: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
