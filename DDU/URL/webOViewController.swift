//
//  webOViewController.swift
//  DDU
//
//  Created by Manuel Osorio Catalan on 24/01/21.
//  Copyright © 2021 418080739. All rights reserved.
//

import UIKit
import WebKit
class webOViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.uiDelegate = self
        let url = URL(string:  "https://www.defensoria.unam.mx/orientate/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
    }
    @IBAction func share(_ sender: Any) {
        let message = "Defensoría UNAM Móvil"
               //Set the link to share.
               if let link = NSURL(string: "https://www.defensoria.unam.mx/orientate/")
               {
                let objectsToShare = [message,link] as [Any]
                   let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
                activityVC.excludedActivityTypes = [UIActivity.ActivityType.airDrop, UIActivity.ActivityType.addToReadingList]
                self.present(activityVC, animated: true, completion: nil)
               }
    }
    
    @IBAction func anteriorBtn(_ sender: Any) {
        if webView.canGoBack{
            webView.goBack()
        }
    }
    
   
    @IBAction func siguienteBtn(_ sender: Any) {
        if webView.canGoForward{
            webView.goForward()
        }
    }
    @IBAction func actualizar(_ sender: Any) {
        webView.reload()
    }
}
