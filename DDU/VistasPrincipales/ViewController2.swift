//
//  ViewController2.swift
//  DDU
//
//  Created by CEDAM18 on 10/1/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit
import SafariServices

class ViewController2: UIViewController {
    
    @IBOutlet weak var Contac: UILabel!
    @IBOutlet weak var orientacionQueja: UILabel!
    @IBOutlet weak var consultaTramite: UILabel!
    @IBOutlet weak var preguntasFrecuentes: UILabel!
    @IBOutlet weak var QDef: UILabel!
    @IBOutlet weak var PG: UILabel!
    @IBOutlet weak var nav: UINavigationItem!
    @IBOutlet weak var CT: UILabel!
    @IBOutlet weak var OQ: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        HerramientaLabel.shared.short(self.view,  txt_msg: "Algunos módulos de la aplicación Defensoría UNAM Móvil necesitan acceso a internet")
       
        
        QDef.textAlignment = .center
        QDef.font = UIFont(name: "Sytem",  size: 17)
        QDef.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        QDef.font =  UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.heavy)
        QDef.backgroundColor = UIColor(red: 0/255, green: 43/255, blue: 122/255, alpha: 1)
        
        
        PG.textAlignment = .center
        PG.font = UIFont(name: "Sytem",  size: 17)
        PG.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        PG.font =  UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.heavy)
        PG.backgroundColor = UIColor(red: 0/255, green: 43/255, blue: 122/255, alpha: 1)
        
        OQ.textAlignment = .center
        OQ.font = UIFont(name: "Sytem",  size: 17)
        OQ.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        OQ.font =  UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.heavy)
        OQ.backgroundColor = UIColor(red: 0/255, green: 43/255, blue: 122/255, alpha: 1)
        
        CT.textAlignment = .center
        CT.font = UIFont(name: "Sytem",  size: 17)
        CT.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        CT.font =  UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.heavy)
        CT.backgroundColor = UIColor(red: 0/255, green: 43/255, blue: 122/255, alpha: 1)
        
        //Contac.textAlignment = .center
        Contac.font = UIFont(name: "Sytem",  size: 17)
        Contac.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        Contac.font =  UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.heavy)
        Contac.backgroundColor = UIColor(red: 0/255, green: 43/255, blue: 122/255, alpha: 1)
        
    }
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
  
    
}
