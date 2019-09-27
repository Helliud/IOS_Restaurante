//
//  DetallesRestaurante.swift
//  restaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import Foundation
import UIKit

class DetallesRestauranteController: UIViewController {
    
    var restaurante : Restaurante?
    
    @IBOutlet weak var lblCalle: UILabel!
    @IBOutlet weak var lblTelefono: UILabel!
    @IBOutlet weak var lblLugar: UILabel!
    
    override func viewDidLoad() {
       self.title = restaurante!.nombre!
        lblCalle.text = restaurante!.direccion
        lblLugar.text = restaurante!.descripcion
        lblTelefono.text = restaurante!.telefono
    }
}
