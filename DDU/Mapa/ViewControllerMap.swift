//
//  ViewControllerMap.swift
//  DDU
//
//  Created by CEDAM18 on 10/1/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit
import MapKit
import SafariServices
import MessageUI

class ViewControllerMap: UIViewController, MFMailComposeViewControllerDelegate{
    
    @IBOutlet weak var ubicacion: UILabel!
    @IBOutlet weak var btnGenero: UIButton!
    @IBOutlet weak var Atencion: UILabel!
    @IBOutlet weak var btnDDU: UIButton!
    @IBOutlet weak var telefono: UILabel!
    @IBOutlet weak var TituloDDu: UILabel!
    //@IBOutlet weak var mapa: MKMapView!
    @IBOutlet weak var mapa: MKMapView!
    // @IBOutlet weak var textoMapa: UITextView!
    
    let ubicacion1 = CLLocation(latitude: 19.310753, longitude: -99.181922)
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapa.setRegion(coordinateRegion, animated: true)
        mapa.layer.cornerRadius = 23
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.textoMapa.layer.cornerRadius = 23
        centerMapOnLocation(location: ubicacion1)
        
        let anotacionFinal = Anotacion(titulo: "Defensoría de los Derechos Universitarios", coordenadas: CLLocationCoordinate2D(latitude: 19.310753, longitude: -99.181922))
        mapa.addAnnotation(anotacionFinal)
        
        TituloDDu.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        TituloDDu.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.black)
        Atencion.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        Atencion.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.black)
        btnDDU.titleLabel?.textColor = UIColor(red: 0/255, green: 43/255, blue: 122/255, alpha: 1)
        btnDDU.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        btnGenero.titleLabel?.textColor = UIColor(red: 0/255, green: 43/255, blue: 122/255, alpha: 1)
        btnGenero.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        ubicacion.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        ubicacion.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.medium)
        telefono.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        telefono.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
    }
    
    
    @IBAction func DUU(_ sender: Any) {
        let mailComponentDDU = self.configMAilControllerDDU()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComponentDDU, animated: true, completion: nil)
        } else {
            print("no puedo entra")
            showMailError()
        }
    }
    @IBAction func AVG(_ sender: Any) {
        let mailComponentVC = self.configMAilControllerAVG()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComponentVC, animated: true, completion: nil)
        } else {
            print("no puedo entra")
            showMailError()
        }
    }
    
    func configMAilControllerAVG()-> MFMailComposeViewController{
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setSubject("Envia Email")
        mailComposerVC.setMessageBody("<b></b>", isHTML: true)
        mailComposerVC.setToRecipients(["genero@defensoria.unam.mx"])
        return mailComposerVC
    }
    func configMAilControllerDDU()-> MFMailComposeViewController{
        let mailComposerDDU = MFMailComposeViewController()
        mailComposerDDU.mailComposeDelegate = self
        mailComposerDDU.setSubject("Envia Email")
        mailComposerDDU.setMessageBody("<b></b>", isHTML: true)
        mailComposerDDU.setToRecipients(["derechosuniversitarios@defensoria.unam.mx"])
        return mailComposerDDU
    }
    // MARK: - Propiedades mailcomposeController
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
          controller.dismiss(animated: true)
          switch result {
          case .cancelled:
              print("Correo Cancelado")
          case .saved:
              print("Correo Guardado")
          case .sent:
              self.allertInfo(_title: "informació de correo", _message: "El correo se envió correctamente", _actionTitle: "OK")
              print("Correo enviado")
          case .failed:
              self.allertInfo(_title: "Correo información", _message: "Correo no se envia",
  _actionTitle: "OK")
              print("error eviado por correo: \(error?.localizedDescription)")
          default:
              break
          }
      }
    func allertInfo(_title:String, _message:String, _actionTitle:String) {
        let alert = UIAlertController(title: _title, message: _message, preferredStyle: UIAlertController.Style.alert)
          alert.addAction(UIAlertAction(title: _actionTitle, style: UIAlertAction.Style.default, handler: nil))
           self.present(alert, animated: true, completion: nil)
       }
    
    
    
    /*
    func mailComposeController(controller2: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        switch result.rawValue {
        case MFMailComposeResultCancelled.rawValue:
            print("Mail cancelled")
            controller2.dismissViewControllerAnimated(true, completion: nil)
        case MFMailComposeResultSaved.rawValue:
            print("Mail saved")
            controller2.dismissViewControllerAnimated(true, completion: nil)
        case MFMailComposeResultSent.rawValue:
            print("Mail sent")
            controller2.dismissViewControllerAnimated(true, completion: nil)
        case MFMailComposeResultFailed.rawValue:
            print("Mail sent failure.")
            controller2.dismissViewControllerAnimated(true, completion: nil)
        default:
            break
        }
        controller2.dismissViewControllerAnimated(true, completion: nil)
    }*/
 
    
    func showMailError(){
        let sendMailErrorAlert = UIAlertController(title: "No puede enviar Email", message: "Su dispositivo no puede enviar Email", preferredStyle: .alert)
        let dismis = UIAlertAction(title: "OK", style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismis)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
    }
    @IBAction func facebook(_ sender: UIButton) {
        let screenName =  "UNAMDDU"
        let appURL = NSURL(string: "facebook://user?screen_name=\(screenName)")!
        let webURL = NSURL(string: "https://facebook.com/\(screenName)")!

        if UIApplication.shared.canOpenURL(appURL as URL) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(appURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(appURL as URL)
            }
        } else {

            if #available(iOS 10.0, *) {
                UIApplication.shared.open(webURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(webURL as URL)
            }
        }
    }
    
    @IBAction func instagram(_ sender: UIButton) {
        let screenName =  "unamddu"
        let appURL = NSURL(string: "instagram://user?screen_name=\(screenName)")!
        let webURL = NSURL(string: "https://instagram.com/\(screenName)")!

        if UIApplication.shared.canOpenURL(appURL as URL) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(appURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(appURL as URL)
            }
        } else {

            if #available(iOS 10.0, *) {
                UIApplication.shared.open(webURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(webURL as URL)
            }
        }
    }
    
    @IBAction func twitter(_ sender: UIButton) {
        let screenName =  "unamddu"
        let appURL = NSURL(string: "twitter://user?screen_name=\(screenName)")!
        let webURL = NSURL(string: "https://twitter.com/\(screenName)")!

        if UIApplication.shared.canOpenURL(appURL as URL) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(appURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(appURL as URL)
            }
        } else {

            if #available(iOS 10.0, *) {
                UIApplication.shared.open(webURL as URL, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(webURL as URL)
            }
        }
    }
    
    
    @IBAction func youtube(_ sender: UIButton) {
        let paginaYoutube = SFSafariViewController(url: URL(string: "https://www.youtube.com/channel/UClY_raVFOluWKuuxDonGucA")!)
        paginaYoutube.delegate = self as? SFSafariViewControllerDelegate
        present(paginaYoutube,animated: true)
    }
}

