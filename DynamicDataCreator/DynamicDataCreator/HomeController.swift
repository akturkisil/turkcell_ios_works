//
//  HomeController.swift
//  DynamicDataCreator
//
//  Created by Işıl Aktürk on 20.01.2021.
//

import UIKit
class Products {
    var productTitle: String
    var productDetail: String
    var productPrice: String
    var productImage: String
    
    init(productTitle: String, productDetail: String, productPrice: String, productImage: String) {
        self.productTitle = productTitle
        self.productDetail = productDetail
        self.productPrice = productPrice
        self.productImage = productImage
    }
}

class HomeController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    
    
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtDetail: UITextField!
    @IBOutlet weak var txtPrice: UITextField!
    @IBOutlet weak var images: UIPickerView!
    
    var selectedImage = ""
    var newProduct: Products?
    var img: [String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images.delegate = self
        images.dataSource = self

    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toProductController" {
            let destinationVC = segue.destination as! ProductController
            destinationVC.productList.append(self.newProduct!)
            
        }
    }
    
    // Number of columns of data
       func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
      
       // The number of rows of data
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           return img.count
       }
      
       // The data to return fopr the row and component (column) that's being passed in
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return img[row]
       }
      
       func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           print(img[row])
           selectedImage = img[row]

        

        }
    @IBAction func btnPressed(_ sender: Any) {
        self.newProduct = Products(productTitle: txtTitle.text!, productDetail: txtDetail.text!, productPrice: txtPrice.text!, productImage: self.selectedImage)
        print(newProduct)
        self.performSegue(withIdentifier: "toProductController", sender: nil)
        
    }
}

        
    

    



