//
//  ViewControllerTexto.swift
//  DDU
//
//  Created by CEDAM23 on 10/10/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit

class ViewControllerTexto: UIViewController {

    @IBOutlet weak var Titulo: UITextView!
    @IBOutlet weak var descripcion: UITextView!
    @IBOutlet weak var texto: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
       Titulo.textColor = UIColor(red:0/255, green: 0/255, blue: 0/255, alpha: 1)
        Titulo.font = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.black)
        Titulo.textAlignment = .center
        texto.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        texto.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
        texto.textAlignment = .center
    
    }

}
