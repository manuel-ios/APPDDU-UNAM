//
//  webOrientacionViewController.swift
//  DDU
//
//  Created by Manuel Osorio Catalan on 24/01/21.
//  Copyright © 2021 418080739. All rights reserved.
//

import UIKit
import WebKit

class webOrientacionViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    @IBOutlet weak var tool: UIToolbar!
    var webView: WKWebView!
    override func loadView() {
        //let webConfig =  WKWebViewConfiguration()
      //  webView = WKWebView(frame: .zero, configuration: webConfig)
        webView = WKWebView()
       // webView.uiDelegate =  self
        webView.navigationDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.defensoria.unam.mx/orientate/")!
        webView.load(URLRequest(url: url))
        
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let refresh =  UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [spacer,refresh]
        navigationController?.isToolbarHidden = false
        
    }
    
    @IBAction func backBTn(_ sender: Any) {
        if webView.canGoBack{
            webView.goBack()
            
        }
        
    }
    @IBAction func siguienteBtn(_ sender: Any) {
        if webView.canGoForward{
            webView.goForward()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
