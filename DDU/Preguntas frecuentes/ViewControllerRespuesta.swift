//
//  ViewControllerRespuesta.swift
//  DDU
//
//  Created by CEDAM22 on 28/11/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit

class ViewControllerRespuesta: UIViewController {
    
    @IBOutlet var texto: UITextView!
    
    var stringTexto : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        texto.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        texto.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
        texto.text = stringTexto
    }
    

  
}
