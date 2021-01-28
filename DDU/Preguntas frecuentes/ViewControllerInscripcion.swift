//
//  ViewControllerInscripcion.swift
//  DDU
//
//  Created by CEDAM22 on 10/18/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit

class ViewControllerInscripcion: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var busqueda: UISearchBar!
    
    let arreglo = ["¿Cuál es el tiempo límite para terminar los créditos de mi plan de estudios? \n\n R= En el artículo 22 del Reglamento General de Inscripciones se establecen los límites de tiempo para estar inscrito en la Universidad con los beneficios de todos los servicios educativos y extracurriculares.","¿Puedo pedir la suspensión de mis estudios? \n\n R= Si, la debes solicitar por escrito al Consejo Técnico de tu plantel. (Art. 23 Reglamento General de Inscripciones)","¿Cuántas veces me puedo inscribir a la misma asignatura? \n\n R= Dos veces como máximo, siempre que no excedas los límites de tiempo fijados para estar inscrito en el plan de estudios que corresponda. Si no acreditas la asignatura, podrás hacerlo mediante examen extraordinario (Artículo 33 del Reglamento General de Inscripciones)."
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
extension ViewControllerInscripcion: UITableViewDelegate, UITableViewDataSource {
    
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

extension ViewControllerInscripcion: UISearchBarDelegate {
    
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

