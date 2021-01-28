//
//  ViewController.swift
//  DDU
//
//  Created by CEDAM22 on 9/30/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController {

    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var acerca: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        imagen.contentMode = .scaleToFill
        
        imagen.animationImages = [
            UIImage(named: "IMGUNAM")!,
            UIImage(named: "Gómez García")!,
            UIImage(named: "Hernández Barrios-1")!,
            UIImage(named: "Hernández Barrios")!,
            UIImage(named: "Méndez Calvillo")!,
            UIImage(named: "Ramírez Hernández. Orgullo universitario.")!,
            UIImage(named: "Sánchez Pérez. MÁSQUEPALABRAS")!,
            UIImage(named: "Santillán Guzmán. De sombrillas y Sonrisas")!,
            UIImage(named: "Velázquez Hernández.fotografia")!,
        ]
        imagen.animationDuration = 25.0
        imagen.startAnimating()
        acerca.backgroundColor = UIColor(red: 218/255, green: 107/255, blue: 22/255, alpha: 1)
        acerca.titleLabel?.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }


}

