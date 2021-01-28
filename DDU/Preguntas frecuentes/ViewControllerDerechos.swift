//
//  ViewControllerDerechos.swift
//  DDU
//
//  Created by CEDAM22 on 10/18/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit

class ViewControllerDerechos: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var busqueda: UISearchBar!
    
    let arreglo = ["¿Las autoridades universitarias deben otorgar respuesta a los estudiantes que realicen alguna petición por escrito? \n\n R= Sí, cuando un estudiante dirige alguna petición por escrito debe recibir respuesta por el mismo medio.","¿Que puedo hacer si la autoridad universitaria no otorga una respuesta?\n\n R= La o el estudiante podrá presentar una queja ante la Defensoría por afectación a su derecho de petición.", "¿A cuantos exámenes ordinarios tengo derecho? \n\n R= En tu facultad o escuela habrá dos periodos de exámenes ordinarios. Podrás presentarte en cualquiera de esos periodos, o en ambos; pero si acreditas la materia en alguno de ellos esa calificación será definitiva (artículo 11 del Reglamento General de Exámenes).","¿A qué se refiere la libertad de cátedra? \n\n R= Maestras, maestros, alumnas y alumnos tienen derecho a expresar sus opiniones, sin restricción alguna, salvo el respeto y tolerancia que deben privar entre las y los universitarios en la discusión de sus ideas. La libertad de cátedra es incompatible con cualquier dogmatismo o hegemonía ideológica y no exime de ninguna manera a maestros y alumnos de la obligación de cumplir con los respectivos programas de estudio."]
    
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
extension ViewControllerDerechos: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searched.count
        } else {
            return arreglo.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.textColor = UIColor(red: 0/255, green: 0/155, blue: 0/255, alpha: 1)
        cell?.textLabel?.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
        if searching {
            cell?.textLabel?.text = searched[indexPath.row]
        } else {
            cell?.textLabel?.text = arreglo[indexPath.row]
        }
        return cell!
    }
    
}

extension ViewControllerDerechos: UISearchBarDelegate {
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

