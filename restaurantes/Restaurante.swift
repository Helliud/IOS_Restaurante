//
//  Restaurante.swift
//  restaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import Foundation

class Restaurante{
    var direccion : String?
    var telefono : String?
    var descripcion : String?
    
    init(direccion : String, telefono : String, descripcion : String) {
        self.descripcion = descripcion
        self.direccion = direccion
        self.telefono = telefono
    }
}
