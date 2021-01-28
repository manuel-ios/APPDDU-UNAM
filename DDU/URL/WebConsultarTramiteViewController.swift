//
//  WebConsultarTramiteViewController.swift
//  DDU
//
//  Created by Manuel Osorio Catalan on 24/01/21.
//  Copyright © 2021 418080739. All rights reserved.
//

import UIKit
import WebKit

class WebConsultarTramiteViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.defensoria.unam.mx/seguimiento.html")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures =
            true
      
        
    }
    
    @IBAction func share(_ sender: Any) {
        let message = "Defensoría UNAM Móvil"
               //Set the link to share.
               if let link = NSURL(string: "https://www.defensoria.unam.mx/seguimiento.html")
               {
                let objectsToShare = [message,link] as [Any]
                   let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
                activityVC.excludedActivityTypes = [UIActivity.ActivityType.airDrop, UIActivity.ActivityType.addToReadingList]
                self.present(activityVC, animated: true, completion: nil)
               }
    }
    
    @IBAction func BackBtn(_ sender: Any) {
        if webView.canGoBack{
            webView.goBack()
        }
    }
    
    @IBAction func ForwardBTN(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
    }
    
}
