//
//  ViewControllerServicios.swift
//  DDU
//
//  Created by CEDAM22 on 10/18/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit

class ViewControllerServicios: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var busqueda: UISearchBar!

    let arreglo = [ "¿Cómo puedo hacer uso de las instalaciones deportivas de la UNAM? \n\n R=Ingresa a la página de internet de Deporte UNAM y consulta los requisitos para cada disciplina (http://www.deporte.unam.mx/instalaciones/index.php)","¿Qué puedo hacer si no se me da acceso a las instalaciones deportivas de la UNAM? \n\n R= Ingresa a la página (http://www.deporte.unam.mx/instalaciones/index.php) y conoce al Director de Deporte Universitario, puedes plantearle tus dudas e inquietudes mediante un escrito, a efecto de que te brinde una respuesta por escrito."
    ]
    
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
extension ViewControllerServicios: UITableViewDelegate, UITableViewDataSource {
    
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
        cell?.textLabel?.font = UIFont.systemFont(ofSize: 16, weight:  UIFont.Weight.semibold)
        if searching {
            cell?.textLabel?.text = searched[indexPath.row]
        } else {
            cell?.textLabel?.text = arreglo[indexPath.row]
        }
        return cell!
    }
    
}

extension ViewControllerServicios: UISearchBarDelegate {
    
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

