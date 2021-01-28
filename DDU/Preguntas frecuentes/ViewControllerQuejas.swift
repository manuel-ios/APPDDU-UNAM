//
//  ViewControllerQuejas.swift
//  DDU
//
//  Created by CEDAM22 on 10/18/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import UIKit

class ViewControllerQuejas: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var busqueda: UISearchBar!

    let arreglo = ["¿Has sido víctima de acoso por integrantes de tu plantel?\n\n R=Existen diferentes tipos de acoso, por eso es importante que nos cuentes más detalles de lo sucedido para así, poder darte la atención debida y proporcionarte la información respecto a las opciones con las que cuentas. Acude a la Defensoría por orientación.","¿Has sido víctima de algún acto de discriminación?\n\n R=Es importante que tengas presente cuándo pasó, quién te discrimina, o porqué consideras que te ha discriminado, en dónde y demás detalles de lo ocurrido para que puedas presentar tu queja (1) ante la Dirección de tu plantel, o bien (2) en la Defensoría.","¿Denunciaste una vulneración a tus derechos y no sabes en qué estatus se encuentra tu procedimiento? \n\n R=Acude a la Defensoría y cuéntanos desde cuándo iniciaste tu denuncia, en dónde, quién te atendió y demás detalles de tu caso, así nosotros podremos explicarte el procedimiento establecido en las normas y, de ser el caso, recibir tu queja al respecto.","¿Eres víctima de violencia de género y deseas saber qué hacer? \n\n R=Puedes acercarte a (1) la oficina jurídica de tu plantel, o bien, (2) a la Defensoría para recibir la atención correspondiente y en su caso, presentes tu queja. Recuerda que no es necesario que acudas primero a una y luego a otra, puedes acudir al mismo tiempo a las dos si es tu deseo.","¿Algún integrante de la UNAM te ha reprimido tu derecho a la denuncia?\n\n R=Acércate a la Defensoría y recibe una orientación ya que nos ayudarás a conocer más detalles de lo ocurrido y así, poderte brindar las opciones correspondientes como podría ser que presentes tu queja en la Defensoría.","¿Fuiste víctima de actos de humillación o faltas de respeto? \n\n R=Es importante que tengas presente cuándo pasó, quién te agredió, en dónde y demás detalles de lo ocurrido para que puedas presentar tu queja (1) ante la Dirección de tu plantel, o (2) en la Defensoría.","Tienes miedo a represalias y por eso no te animas a denunciar?\n\n R=En la Defensoría puedes recibir una orientación y, en su caso, presentar tu queja si las autoridades de tu plantel no te dan confianza. Somos un órgano independiente y autónomo que busca preservar la convivencia universitaria y proponer soluciones, lo que nos cuentes es confidencial.","¿Necesitas algún tipo de apoyo o contención psicológica por problemas personales, académicos o familiares, etc? \n\n R= La Defensoría puede canalizarte a los servicios médicos especializados que proporciona la UNAM en caso de que tú así lo requieras y, dependiendo a la cercanía de tu escuela o domicilio.","¿Conoces o fuiste testigo de una afectación a derechos universitarios por integrantes de la UNAM? \n\n R=Puedes recibir una orientación de la Defensoría y comunicar a la persona afectada las opciones o alternativas que podría seguir para cesar esa afectación. O bien, puedes sugerirle que directamente reciba la orientación de la Defensoría (vía redes sociales, telefónica, whatsapp, correo electrónico o personalmente).","¿Fuiste testigo de un acto discriminatorio o de violencia? \n\n R=Recuerda que puedes denunciar y acompañar a la víctima en el procedimiento. Es importante que sean orientados y se les proporcione la información correspondiente respecto a las opciones o alternativas que tienen para su procedimiento dentro de la Universidad.","¿Qué hace la Defensoría en los casos de violencia de género? \n\n R=Brindar orientación, recibir quejas y darles un seguimiento hasta su conclusión. Canalizar a servicios psicológicos o psiquiátricos en caso de solicitarlo.","¿Puedo presentar una queja en la Defensoría si fui víctima de violencia en la UNAM? \n\n R=Sí y, recibirás una orientación respecto al procedimiento y tus derechos establecidos en el Protocolo.","Fuera de la UNAM fui víctima de violencia ¿Puedo presentar una queja en la Defensoría? \n\n R=Sí, siempre y cuando la persona agresora sea miembro de la comunidad universitaria y, con ella exista una relación académica, laboral o análoga.","¿Qué debo hacer si fui víctima de violencia de género y deseo recibir terapia psicológica? \n\n R= La Defensoría puede canalizarte a los servicios médicos especializados que proporciona la UNAM en caso de que tú así lo requieras y, dependiendo a la cercanía de tu escuela o domicilio.","¿De qué me serviría una queja en la Defensoría si ya presente una queja en el jurídico de mi plantel? \n\n R= Una queja ante la Defensoría te facilita el seguimiento del procedimiento ante la oficina jurídica de tu plantel y a que accedas a los derechos reconocidos en el Protocolo.","¿Cuáles derechos me reconoce el Protocolo para la Atención de casos de violencia de género en la UNAM? \n\n R=Dependen ante la instancia que acudas (oficina jurídica de tu plantel o Defensoría). Ej. Medidas de contención, definición del procedimiento (formal o alternativo), medidas urgentes de protección, acompañamiento ante el MP, confidencialidad, debida diligencia (investigación exhaustiva, sanción proporcional, reparación suficiente), permanecer informada respecto del trámite y razonamientos de las decisiones, protección de tu información personal, seguimiento de sanciones.","¿La violencia de género a quiénes afecta?\n\n R= Principalmente a mujeres, pero también puede afectar a hombres, personas de la comunidad LGBTTTIQ+, o a los grupos de personas con base en su sexo o género. Por eso se distingue de otros tipos de violencia, y puede incluir daños físicos, sexuales, psicológicos, patrimoniales, económicos o de cualquier otra índole.","¿Cuáles son los tipos de violencia de género? \n\n R=Para determinar que un acto representa violencia de género, se deberán valorar varios elementos como: comportamiento (acción u omisión) derivado de estereotipos de género, daño (individual y colectivo) de acuerdo a la persona que lo resintió, asimetría de poder (formal o informal), consecuencias (individuales, colectivas, mediatas e inmediatas), y contexto.","¿Podrían darme algunos ejemplos de violencia de género?\n\n R=éstos son de manera enunciativa y no limitativa como: Celotipia, chistes sexuales u obscenos; comentarios o bromas acerca de la vida privada o las supuestas actividades sexuales de una persona; toma o difusión de fotografías y videos de carácter sexual sin el consentimiento de la persona, entre otros.","¿Qué es el acoso u hostigamiento? \n\n R=Es importante que diferencies acoso de hostigamiento. El acoso sucede independientemente de la relación de poder entres las partes. El hostigamiento surge de la relación jerárquica (de poder) entre las personas involucradas (Ej.Profesor/a vs Alumno/a). \n Existen diversas manifestaciones o medios del acoso u hostigamiento, por ejemplo: sexual, laboral, escolar, ciberacoso, etc. \n Si fuiste víctima o testigo de un delito dentro de tu Facultad o Campus Universitario ¡Denuncia!Acude a la Oficina Jurídica de tu plantel o dependencia.","¿Qué puedo hacer si fui testigo de una conducta contraria a la legislación universitaria? \n\n R= Puedes hacer del conocimiento dicha situación a esta Defensoría --vía correo electrónico, telefónica o personal--, y puedes acercarte a la persona que fue víctima de los hechos e invitarla a acudir a esta Defensoría para recibir la orientación que corresponda.","¿Qué puedo hacer si el personal administrativo que se encuentra adscrito a mi escuela o facultad no me trata con respeto? \n\n R= Puedes hacer del conocimiento dicha situación mediante escrito ante el Director de tu escuela o facultad, y marcar copia de conocimiento a la Defensoría.","¿Qué puedo hacer si el personal de mi escuela o facultad no registra correctamente mis calificaciones? \n R= Puedes acudir mediante un escrito ante el Director de tu escuela o facultad y hacerle del conocimiento dicha situación.","¿Qué puedo hacer si mi profesor me impide el ingreso al salón de clases? \n\n R= Debes acudir mediante un escrito ante el Director de tu escuela, facultad o plantel a efecto de que le hagas del conocimiento para que en su calidad de autoridad, determine lo conducente.","¿Qué puedo hacer si mi profesor me exige adquirir un libro de su autoría para acreditar su materia? \n\n R= Debes de dirigir un escrito ante el Director de tu plantel en donde plantees dicha situación para que determine lo conducente."]
    
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
extension ViewControllerQuejas: UITableViewDelegate, UITableViewDataSource {
    
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

extension ViewControllerQuejas: UISearchBarDelegate {
    
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

