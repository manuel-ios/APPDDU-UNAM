

//
//  AcercadeViewController.swift
//  DDU
//
//  Created by user177761 on 11/17/20.
//  Copyright © 2020 418080739. All rights reserved.
//

import UIKit
import SafariServices
class AcercadeViewController: UIViewController {

    @IBOutlet weak var copyrigthUNAM: UILabel!
    @IBOutlet weak var ligaDef: UIButton!
    @IBOutlet weak var ligaUNAM: UIButton!
    @IBOutlet weak var versionDef: UILabel!
    @IBOutlet weak var viewB: UIView!
    @IBOutlet weak var tituloDef: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewB.backgroundColor = UIColor(red: 218/255, green: 107/255, blue: 22/255, alpha: 1)
        tituloDef.font = UIFont(name: "System", size: 27)
        tituloDef.font = UIFont.boldSystemFont(ofSize: 22.5)
        tituloDef.textColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        versionDef.font =  UIFont(name: "System ", size: 25)
        versionDef.font = UIFont.boldSystemFont(ofSize: 19)
        versionDef.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
        versionDef.textColor =  UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
     
        ligaUNAM.titleLabel?.font = UIFont(name: "system", size: 25)
        ligaUNAM.titleLabel?.textColor = UIColor(red:5/255, green: 44/255, blue: 80/255, alpha: 1)
        ligaUNAM.titleLabel?.baselineAdjustment = .alignCenters
        ligaUNAM.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: UIFont.Weight.semibold)
        
        ligaDef.titleLabel?.font = UIFont(name: "system", size: 25)
        ligaDef.titleLabel?.textColor = UIColor(red:5/255, green: 44/255, blue: 80/255, alpha: 1)
        ligaDef.titleLabel?.baselineAdjustment = .alignCenters
        ligaDef.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: UIFont.Weight.semibold)
       
        
        
        copyrigthUNAM.font = UIFont(name: "System", size: 29)
        copyrigthUNAM.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        copyrigthUNAM.textAlignment = .center
        copyrigthUNAM.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
        
    }
    

    @IBAction func LigaUNAM(_ sender: Any) {
        let paginaUNAM = SFSafariViewController(url: URL(string:"http://www.unam.mx")!)
        
        paginaUNAM.delegate = self as? SFSafariViewControllerDelegate
        present(paginaUNAM,animated: true)
    }
    @IBAction func LigaUNAMenLinea(_ sender: Any) {
        let paginaUNAMLinea = SFSafariViewController(url: URL(string: "http://www.unamenlinea.unam.mx")!)
        paginaUNAMLinea.delegate = self as? SFSafariViewControllerDelegate
        present(paginaUNAMLinea, animated: true, completion: nil)
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
