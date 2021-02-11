//
//  BodyTable.swift
//  PostsProject
//
//  Created by Işıl Aktürk on 29.01.2021.
//

import UIKit

class BodyTable: UIViewController {
    
    var detail: Post?
    @IBOutlet weak var lblBody: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblBody.text = detail?.body
            
        }

    }
    

    

