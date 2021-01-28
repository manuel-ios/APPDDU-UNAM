//
//  WebOrientacionViewController.swift
//  DDU
//
//  Created by Manuel Osorio Catalan on 23/01/21.
//  Copyright © 2021 418080739. All rights reserved.
//

import UIKit
import WebKit
import SafariServices
class WebOrientacionViewController: UIViewController, WKNavigationDelegate {
    
    var webview: WKWebView!
    override func loadView() {
        webview = WKWebView()
        webview.navigationDelegate =  self
        view =  webview
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let url  =  URL(string: "https://www.defensoria.unam.mx/orientate/")!
        webview.load(URLRequest(url: url))
        webview.allowsBackForwardNavigationGestures =  true
    }
 

}
