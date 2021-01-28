//
//  ViewControllerOrientaciones.swift
//  DDU
//
//  Created by CEDAM22 on 11/13/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit

class ViewControllerOrientaciones: UIViewController {

    @IBOutlet weak var busqueda: UISearchBar!
    
 
    @IBOutlet weak var tblView: UITableView!
    let arreglo = ["¿Qué es la Defensoría de Derechos Universitarios ,de Igualdad y atención a la violencia de género? \n\n R= La Defensoría de Derechos Universitarios, Igualdad y Atención de la Violencia de Género es un órgano autónomo e independiente, que está integrada por dos Defensorías Adjuntas: \n Defensoría Adjunta de Derechos Universitarios \n Defensoría Adjunta de Igualdad y Atención de la Violencia de Género, la cual brinda asesoría ","¿Qué hace la Defensoría Adjunta de Igualdad y Atención de la Violencia de Género? \n\n R= Conoce y atiende las quejas por parte de  integrantes de la comunidad universitaria en contra de presuntos actos que constituyan violencia de género. Brindando asesoría legal y atención psicológica. \n Coadyuva con las autoridades en la estrategia de prevención, atención, sanción  y erradicación a la violencia de género. ","¿Qué es género? \n\n R= Valores, atributos, roles y representaciones que la sociedad asigna a hombres y mujeres ","¿Qué es perspectiva de género? \n\n R= Visión científica, analítica y política sobre las mujeres y los hombres que tiende a eliminar las causas de la opresión de género como la desigualdad, la injusticia y la jerarquización de las personas basada en el gé­nero. Promueve la igualdad entre los géneros a través de la equidad, el adelanto y el bienestar de las mujeres; contribuye a construir una socie­dad en donde las mujeres y los hombres tengan el mismo valor, la igualdad de derechos y oportu­nidades para acceder a los recursos económicos y a la representación política y social en los ám bi­tos de tom a de decisiones. ","¿Qué es violencia de género? \n\n R= Cualquier acción u omisión contra un integrante de la comunidad universitaria, derivada de su condición de género, orientación y/o preferencia sexual y que resulte en daño o sufrimiento psicológico, físico, patrimonial, económico, sexual o la muerte y que se cometa en instalaciones universitarias. \n Algunas manifestaciones de violencia de género: Celotipia, insultos, devaluaciones, chistes sexuales u obscenos; comentarios o bromas acerca de la vida privada o las supuestas actividades sexuales de una persona; toma o difusión de fotografías y videos de carácter sexual sin el consentimiento de la persona; invitaciones, llamadas telefónicas o mensajes electrónicos indeseables y persistentes, seguir a una persona de la Universidad (acecho); amenazas, tratos o comentarios discriminatorios, gestos ofensivos con las manos o el cuerpo; contactos físicos indeseados (tocamientos); insinuaciones u observaciones marcadamente sexuales; violación, exhibición no deseada de pornografía; pedir favores sexuales a cambio de subir una calificación, aprobar una materia o una promesa de cualquier tipo de trato preferencial; amenazar a una persona de reprobarla, bajarla de puesto o cuestiones similares si no se mantiene un contacto sexual, entreotros. ","¿Cuáles son los procedimientos dentro de la UNAM? \n\n R= Procedimientos disciplinarios \n Procedimientos de Investigació Administrativa ","¿Qué pasa si mi agresor es académico? \n\n R= Cuando la persona agresora tenga calidad académica, y el o la Titular de la Entidad Académica o Dependencia Universitaria considere imponer una sanción. Se instrumentará un procedimiento de investigación administrativa. El cual deberá realizarse en un plazo máximo de 20 días hábiles  a partir de la fecha en que tenga conocimiento el Titular de la Entidad Académica o Dependencia. ","¿Qué pasa si mi agresor es un estudiante? \n\n R= Tratándose de casos de alumnos, el Rector y los directores de las entidades académicas podrán sancionarlos de manera inmediata con una amonestación, asimismo podrán suspenderlos o expulsarlos provisionalmente con la finalidad de salvaguardar el orden y la disciplina universitaria, remitiendo el caso al Tribunal Universitario, dentro de un plazo que no exceda de 3 días a la suspensión o expulsión provisional, para que resuelva, o bien, remitir sin sanción dentro del plazo de 5 días siguientes a que tiene conocimiento de los hechos. El Tribunal podrá imponer las siguientes sanciones: Amonestación, suspensión o separación de cargos o empleos que desempeñen, suspensión hasta por 1 año en sus derechos escolares y expulsión definitiva de la facultad o escuela. ","¿Qué pasa si mi agresor es un trabajador? \n\n R= Cuando la persona agresora tenga calidad de base y el Titular considere imponer una sanción, conforme a la Cláusula 21 del Contrato Colectivo de Trabajo del STUNAM, se iniciará un procedimiento de investigación administrativa. El cual deberá realizarse en un plazo máximo de 10 días hábiles  a partir de la fecha en que tenga conocimiento el Titular de la Entidad Académica o Dependencia. ","¿Qué es lo que se considera para las medidas precautorias? \n\n R= a. La naturaleza de la violencia de género: \n i. La gravedad del incidente (efectos para la persona que presentó su queja) \n ii. El tiempo que ha durado el ejercicio de la violencia(un evento aislado o una serie continuada) \n iii. El daño causado (individual o colectivo, inmediato o mediato) y \n iv. Si hubo actos similares anteriormente (frecuencia y escalada de violencia). \n b.Las relaciones de poder entre quien presenta su queja y la persona presunta agresora: \n i. Si existe abuso de autoridad y \n ii. La posición de la parte que presentó su queja (edad, nivel de experiencia, posición en la organización). \n c. Cualquier otra información relevante de la condición de la víctima y del agresor. ","¿Qué tipo de sanciones existen? \n\n R= I. Personal académico: \n a) extrañamiento escrito \n b) suspensión, y \n c) destitución. \n II. Alumnado: \n a) amonestación \n b) negación de créditos o cancelación de los concedidos respecto al pago de cuotas \n c) suspensión o separación de cargos o empleos que desempeñen \n d) suspensión hasta por un año en sus derechos escolares, y \n e) expulsión definitiva de la facultad o escuela \n III. Personal Administrativo \n a) amonestación \n b) suspensión de 1 a 8 días \n c) rescisión"
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
    extension ViewControllerOrientaciones: UITableViewDelegate, UITableViewDataSource {
        
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

    extension ViewControllerOrientaciones: UISearchBarDelegate {
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



