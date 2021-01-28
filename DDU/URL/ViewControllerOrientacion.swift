//
//  ViewControllerOrientacion.swift
//  DDU
//
//  Created by CEDAM22 on 10/9/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit
import WebKit

class ViewControllerOrientacion: UIViewController, WKUIDelegate {
    @IBOutlet weak var Orientacion: WKWebView!
    
  
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        Orientacion = WKWebView(frame: .zero, configuration: webConfiguration)
        Orientacion.uiDelegate = self
        view = Orientacion
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.defensoria.unam.mx/orientate/")
        let myRequest = URLRequest(url: myURL!)
        Orientacion.load(myRequest)
    }
    
}

