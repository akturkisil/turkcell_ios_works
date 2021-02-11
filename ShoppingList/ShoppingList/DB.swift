//
//  DB.swift
//  ShoppingList
//
//  Created by Işıl Aktürk on 25.01.2021.
//

import Foundation
import SQLite

struct ProductSt {
    var productName:String = ""
    var productDetail:String = ""
}

class DB {
    
    var db:Connection!
    var tableProduct = Table("product")
    
    let productName = Expression<String?>("productName")
    let productDetail = Expression<String>("productDetail")
    
    let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
    
    func fncConnection() {
        
        let dbPath = path + "/db.sqlite3"
        print("Full Path : \(dbPath)")
        db = try! Connection(dbPath)
        
        do {
            try db.scalar(tableProduct.exists)
        } catch  {
            try! db.run(tableProduct.create { t in
                t.column(productName)
                t.column(productDetail)
            })
        }
    }
    
    func productInsert(productName: String, productDetail: String) -> Int64 {
        
        do {
            let insert = tableProduct.insert(self.productName <- productName , self.productDetail <- productDetail)
            return try db.run(insert)
        } catch  {
            return -1
        }
    }
    
    func productList() -> [ProductSt] {
        var arr:[ProductSt] = []
        let products = try! db.prepare(tableProduct)
        for item in products {
            let us = ProductSt(productName: item[productName]!, productDetail: item[productDetail])
            arr.append(us)
        }
        return arr
        
    }
    func productDelete(xname:String) -> Int {
        let alice = tableProduct.filter(productName == xname)
        return try! db.run(alice.delete())
    }
}
    

