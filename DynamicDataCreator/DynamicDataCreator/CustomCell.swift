//
//  CustomCell.swift
//  DynamicDataCreator
//
//  Created by Işıl Aktürk on 20.01.2021.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var pTitle: UILabel!
    @IBOutlet weak var pImage: UIImageView!
    @IBOutlet weak var pDetail: UILabel!
    @IBOutlet weak var pPrice: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
