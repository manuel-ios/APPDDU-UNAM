//
//  ViewControllerDatos.swift
//  DDU
//
//  Created by user177761 on 9/8/20.
//  Copyright © 2020 418080739. All rights reserved.
//

import UIKit

class ViewControllerDatos: UIViewController {

    @IBOutlet weak var busqueda: UISearchBar!
    @IBOutlet weak var tblView: UITableView!
    
    let arreglo = [
    "¿No estás de acuerdo con tu calificación final? \n R=Solicita la revisión mediante escrito al Director o Directora de tu plantel","¿Hay un error en tu calificación final que aparece en el Sistema? \n R= Solicita la rectificación mediante escrito al Director o Directora de tu plantel","¿No te permiten hacer examen final? \n R= Dirige tu inconformidad mediante escrito al Director o Directora de tu plantel."
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
extension ViewControllerEvaluacion: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searched.count
        } else {
            return arreglo.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if searching {
            cell?.textLabel?.text = searched[indexPath.row]
        } else {
            cell?.textLabel?.text = arreglo[indexPath.row]
        }
        return cell!
    }
    
}

extension ViewControllerEvaluacion: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searched = arreglo.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        tblView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        busqueda.text = ""
        tblView.reloadData()
    }
    
}
