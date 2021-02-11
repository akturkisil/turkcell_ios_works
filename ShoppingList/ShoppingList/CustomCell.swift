//
//  CustomCell.swift
//  ShoppingList
//
//  Created by Işıl Aktürk on 25.01.2021.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDetail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
