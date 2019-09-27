//
//  RestauranteController.swift
//  restaurantes
//
//  Created by Alumno on 9/25/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import Foundation
import UIKit

class RestauranteController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tvRestaurantes: UITableView!
    
    var restaurantes : [Restaurante] = []
    
    override func viewDidLoad() {
        restaurantes.append(Restaurante(nombre: "el perro mamalon", direccion: "Calle 8", telefono: "(666)76441922077", descripcion: "Toda fea"))
        
        restaurantes.append(Restaurante(nombre: "Pollo Loco", direccion: "Real Madrid", telefono: "(666)696969696969", descripcion: "Se venden pollos locos"))
        
        restaurantes.append(Restaurante(nombre: "Comida china el perro express", direccion: "Real Madrid", telefono: "(666)893771232", descripcion: "ching chong"))
    
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurantes")
        celda?.textLabel?.text = restaurantes[indexPath.row].nombre
        
        return celda!
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if(segue.identifier == "goToRestaurante") {
         let destino = segue.destination as? DetallesRestauranteController
        destino?.restaurante = restaurantes[tvRestaurantes.indexPathForSelectedRow!.row]
            
        }
    }
}
