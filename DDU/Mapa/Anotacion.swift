//
//  Anotacion.swift
//  DDU
//
//  Created by CEDAM22 on 10/8/19.
//  Copyright © 2019 418080739. All rights reserved.
//

import Foundation
import MapKit

class Anotacion : NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    let titulo: String
    
    init(titulo: String, coordenadas : CLLocationCoordinate2D){
        self.titulo = titulo
        self.coordinate = coordenadas
        
        super.init()
    }
    
    var subtitle: String? {
        
        return titulo
    }
}
