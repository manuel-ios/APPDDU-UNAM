//
//  ViewControllerPF.swift
//  DDU
//
//  Created by CEDAM22 on 10/18/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit

class ViewControllerPF: UIViewController {
    
    @IBOutlet weak var Derechos: UIButton!
    @IBOutlet weak var Inscripcion: UIButton!
    @IBOutlet weak var Evaluacion: UIButton!
    @IBOutlet weak var Procedimientos: UIButton!
    @IBOutlet weak var servicios: UIButton!
    @IBOutlet weak var quejas: UIButton!
    @IBOutlet var Orientaciones: UIButton!
    @IBOutlet var escolares: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Derechos.layer.cornerRadius = 20
        Inscripcion.layer.cornerRadius = 20
        Evaluacion.layer.cornerRadius = 20
        Procedimientos.layer.cornerRadius = 20
        servicios.layer.cornerRadius = 20
        quejas.layer.cornerRadius = 20
        Orientaciones.layer.cornerRadius = 20
        escolares.layer.cornerRadius = 20
        
    }
    
}
