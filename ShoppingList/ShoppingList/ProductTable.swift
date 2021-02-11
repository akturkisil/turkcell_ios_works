//
//  ProductTable.swift
//  ShoppingList
//
//  Created by Işıl Aktürk on 25.01.2021.
//

import UIKit
import SCLAlertView

class ProductTable: UITableViewController {
    let db = DB()
    var arr:[ProductSt] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        db.fncConnection()
        arr = db.productList()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        let item = arr[indexPath.row]
        cell.lblName.text = item.productName
        cell.lblDetail.text = item.productDetail
        return cell
    }
        
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let item = arr[indexPath.row]
            let deleteRow = db.productDelete(xname: item.productName)
            if (deleteRow > 0) {
                arr.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = arr[indexPath.row]
        print(item.productName)
        SCLAlertView().showTitle(
            "\(item.productName)", // Title of view
            subTitle: "\(item.productDetail)", timeout: nil,
            completeText: "Kapat",
            style: .edit,
            colorStyle: 0x1E77DC,
            colorTextButton: 0xFFFFFF
        )
    }
}
