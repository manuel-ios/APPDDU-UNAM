//
//  ViewControllerEvaluacion.swift
//  DDU
//
//  Created by CEDAM22 on 10/18/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit

class ViewControllerEvaluacion: UIViewController,UISearchControllerDelegate {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var busqueda: UISearchBar!

    let arreglo = [
    "¿Hay un error en tu calificación final que aparece en el Sistema? \n\n R= Solicita la rectificación mediante escrito al Director o Directora de tu plantel","¿No te permiten hacer examen final? \n\n R= Dirige tu inconformidad mediante escrito al Director o Directora de tu plantel.","¿Qué pasa con los datos personales que proporciono a la Defensoría? \n\n R= La Defensoría protege tus datos personales conforme a la Ley General de Protección de Datos Personales en Posesión de Sujetos Obligados y los Lineamientos para la Protección de Datos Personales en Posesión de la Universidad Nacional Autónoma de México. Por lo que, únicamente los utiliza para los fines establecidos en el Estatuto y Reglamento de la Defensoría, así como las finalidades que señala el aviso de privacidad de esta dependencia universitaria. En ese sentido, te sugerimos consultar el mismo en la página https://www.defensoria.unam.mx/web/aviso-de-privacidad.","¿Puedo realizar una orientación anónima? \n\n R= Las orientaciones no son anónimas, pero SÍ confidenciales. Toda la información que proporciones a las y los abogados asesores que te orienten, no se comparte con ninguna autoridad universitaria.","Tengo miedo a represalias si denuncio. ¿Qué puedo hacer? \n\n R: Señala esta situación de manera expresa en tu escrito de queja, para que la Defensoría lleve a cabo acciones al respecto.","¿Puedo acudir con ustedes si ya termine mi carrera y estoy en trámites de titulación? \n\n R= Sí, en este caso para nosotros eres un(a) estudiante, es decir, y si consideras afectado alguno de tus derechos, puedes acudir con nosotros. \n No olvides consultar la Guía de Derechos y Deberes de los alumnos, donde podrás consultar alguno de los derechos y deberes establecidos en nuestra legislación universitaria https://www.defensoria.unam.mx/documentos/web/GUIA_DE_DERECHOS_Y_DEBERES_2017.pdf","¿Las profesoras y los profesores están obligados a darme el programa de estudios de la materia? \n\n R=  Sí, las maestras y los maestros al inicio del ciclo escolar deben dar a conocer a las alumnas y los alumnos los programas de estudio de las asignaturas o módulos que cursarán, la bibliografía correspondiente y la forma de evaluar el curso, así como aquellos aspectos que determinen los consejos técnicos respectivos."    ]
    var searched : [String]!
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searched = arreglo
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
extension String {
    var forSorting: String {
     let simple = folding(options: [.diacriticInsensitive, .widthInsensitive, .caseInsensitive], locale: nil)
     let nonAlphaNumeric = CharacterSet.alphanumerics.inverted
     return simple.components(separatedBy: nonAlphaNumeric).joined(separator: "")
    }
}
extension ViewControllerEvaluacion: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return searched.count
      
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.textColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        cell?.textLabel?.font =  UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
    
            cell?.textLabel?.text = searched[indexPath.row]
        return cell!
    }
    
}

extension ViewControllerEvaluacion: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searching = true
         searched = searchText.isEmpty ? arreglo : arreglo.filter{ (item: String) -> Bool in
             return  item.range(of: searchText, options: [.diacriticInsensitive,.caseInsensitive], range: nil, locale: nil) != nil
         }
        tblView.reloadData()
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


