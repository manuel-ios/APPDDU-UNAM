//
//  ViewControllerTramite.swift
//  DDU
//
//  Created by CEDAM23 on 10/10/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit
import WebKit

class ViewControllerTramite: UIViewController, WKUIDelegate {

    @IBOutlet weak var Tramite: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        Tramite = WKWebView(frame: .zero, configuration: webConfiguration)
        Tramite.uiDelegate = self
        view = Tramite
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.defensoria.unam.mx/seguimiento.html")
        let myRequest = URLRequest(url: myURL!)
        Tramite.load(myRequest)
    }

}
