//
//  ViewControllerEscolares.swift
//  DDU
//
//  Created by CEDAM22 on 11/13/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit

class ViewControllerEscolares: UIViewController {

    @IBOutlet var busqueda: UISearchBar!
    @IBOutlet var tblView: UITableView!
    let arreglo = ["¿Dónde puedo resellar mi credencial? \n\n R=En la oficina de Servicios Escolares del plantel en el que te encuentras inscrito.","Pase Reglamentado: Recuerda, si terminas tu bachillerato en tres años con un promedio mínimo de nueve, se te asignará la carrera y el plantel de tu preferencia.","¿Fuiste sancionado provisionalmente en tu plantel y no sabes ahora qué hacer? \n\n R= Acude al Tribunal Universitario y dale seguimiento a tu procedimiento disciplinario, a los teléfonos 555646-9395, 555646-9399, 555645-3701"]
     
     var searched = [String]()
     var searching = false
     
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         busqueda.delegate = self
     }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destino = segue.destination as! ViewControllerRespuesta
        let indice = tblView.indexPathForSelectedRow!
        let fila = indice.row
        
        if searching {
            destino.stringTexto = searched[fila]
        }
        else {
            destino.stringTexto = arreglo[fila]
        }
    }
 }
 extension ViewControllerEscolares: UITableViewDelegate, UITableViewDataSource {
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         if searching {
             return searched.count
         } else {
             return arreglo.count
         }
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        cell?.textLabel?.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
         if searching {
             cell?.textLabel?.text = searched[indexPath.row]
         } else {
             cell?.textLabel?.text = arreglo[indexPath.row]
         }
         return cell!
     }
     
 }

 extension ViewControllerEscolares: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searching = true
         searched = searchText.isEmpty ? arreglo : arreglo.filter{ (item: String) -> Bool in
             return  item.range(of: searchText, options: [.diacriticInsensitive,.caseInsensitive], range: nil, locale: nil) != nil
         }
        self.tblView.reloadData()
    }
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        self.busqueda.showsCancelButton = true
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        busqueda.showsCancelButton = true
        busqueda.text = ""
        busqueda.resignFirstResponder()
        /*searching = false
        busqueda.text = ""
        tblView.reloadData()*/
    }
     
 }


