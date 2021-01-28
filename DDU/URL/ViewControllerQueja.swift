//
//  ViewControllerQueja.swift
//  DDU
//
//  Created by CEDAM22 on 10/9/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit
import WebKit

class ViewControllerQueja: UIViewController, WKUIDelegate {
    @IBOutlet weak var Queja: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        Queja = WKWebView(frame: .zero, configuration: webConfiguration)
        Queja.uiDelegate = self
        view = Queja
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.defensoria.unam.mx/orientate/")
        let myRequest = URLRequest(url: myURL!)
        Queja.load(myRequest)
    }
    
    
    


}
