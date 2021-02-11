//
//  ViewController.swift
//  ShoppingList
//
//  Created by Işıl Aktürk on 25.01.2021.
//

import UIKit
import SCLAlertView

class ViewController: UIViewController {
    
    let db = DB()
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtDetail: UITextField!
    @IBAction func btnAdd(_ sender: UIButton) {
        let name = txtName.text!
        let detail = txtDetail.text!
        let row = db.productInsert(productName: name, productDetail: detail)
        print(row)
        SCLAlertView().showTitle(
            "Başarılı", // Title of view
            subTitle: "Ürün listeye eklendi", timeout: nil,
            completeText: "Tamam",
            style: .success,
            colorStyle: 0x1CAD09,
            colorTextButton: 0xFFFFFF
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        db.fncConnection()
      }
}

