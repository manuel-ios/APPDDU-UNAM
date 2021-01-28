//
//  ViewControllerProcedimientos.swift
//  DDU
//
//  Created by CEDAM22 on 10/18/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit

class ViewControllerProcedimientos: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var busqueda: UISearchBar!

    let arreglo = ["¿En qué consiste el Procedimiento Alternativo? \n\n R= En llevar a cabo con apoyo de especialistas reuniones en lo individual y/o en conjunto, donde las personas de manera voluntaria y proactiva puedan encontrar a través del diálogo directo o indirecto, una solución a la controversia planteada.","¿Qué casos no son susceptibles de Procedimiento Alternativo? \n\n R= I. Asuntos en los cuales se vean involucrados recursos de la UNAM, así como fondos de terceros otorgados a nombre de esta Institución. \n II. Asuntos en los cuales se vean involucrados derechos laborales. \n III. Asuntos en los que la naturaleza de la conducta sea ajena a la competencia de la UNAM por tratarse situaciones no relacionadas sus fines sustantivos: la docencia, la investigación y la difusión de la cultura.","¿Cuándo es viable un Procedimiento Alternativo? \n\n R= En casos de Conflicto: donde las personas involucradas comparten responsabilidad en la construcción del conflicto. Suelen ser casos en los que existe equilibrio de poder entre las partes. En Casos de violencia: donde la conducta de una o varias de las personas involucradas tuvo algún efecto de agravio en otra u otras. Suelen ser casos en los que es notorio un desequilibrio de poder entre las partes. En Casos de Violencia de género: donde la afectación a las personas o a los grupos de personas tiene como base su sexo o género. Suelen ser casos en los que es notorio un desequilibrio de poder entre las partes.","¿Es lo mismo mediación que Justicia Restaurativa? \n\n R= No, mediación es un mecanismo que se utiliza para aplicar en aquellos casos en donde las personas involucradas comparten responsabilidad en la construcción del conflicto y han sido igualmente impactadas por el desarrollo del mismo; y Justicia Restaurativa es un procedimiento que se enfoca en los daños y las necesidades y atiende las obligaciones que resultan de esos daños; su gama de aplicación es muy amplia y sus principios permite trabajar en aquellos casos en los cuales exista una asimetría de poder.","¿Cuáles son los alcances del Procedimiento Alternativo? \n\n R= En caso de que las personas construyan un acuerdo y el mismo sea cumplido, la queja quedará resuelta en esos términos, pero para el caso de que alguna de las partes señale el incumplimiento del acuerdo, la Defensoría remitirá el acta a la autoridad competente para los efectos conducentes.","¿Los casos de violencia de género son susceptibles de Procedimiento Alternativo? \n\n R= Sí, siempre y cuando el caso lo permita, para ello un grupo de especialista realizará la valoración del caso, y si resulta procedente de atender por esta vía se brinda toda la información a la persona quejosa, para que otorgue su consentimiento informado, si es que así lo determina.","¿Qué instancia es la facultada para llevar a cabo los Procedimientos Alternativos? \n\n R= El Departamento de Procedimiento Alternativo de la Defensoría, a través de personal cualificado para llevar a cabo este tipo de procedimiento.","¿A quiénes atendemos? \n\n R= Cuando se trata de asuntos relacionados con violencia de género, atendemos  al Alumnado, personal académico, administrativo y de confianza.","¿Cuales son los servicios que se prestan? \n\n R= Orientaciones legales, recepción de quejas, remisiones para atención psicológica y médica, solicitud de de medidas precautorias, procedimientos alternativos y recomendaciones sobre asuntos de su competencia.","¿Que autoridad determina la sanción en los procedimientos? \n\n R= Procedimientos de investigación administrativa instrumentados en contra de personal académico o administrativo y los avisos de sanción para trabajadores de confianza el Titular de la Entidad Académica o Dependencia Universitaria es la facultada para imponer sanción. \n Para el alumnado, el Tribunal Universitario es el que determina la sanción, previa remisión del caso por el Titular de la Entidad Académica."]
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
extension ViewControllerProcedimientos: UITableViewDelegate, UITableViewDataSource {
    
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

extension ViewControllerProcedimientos: UISearchBarDelegate {
    
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

