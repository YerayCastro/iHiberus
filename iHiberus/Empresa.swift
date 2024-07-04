//
//  Empresa.swift
//  iHiberus
//
//  Created by Yery Castro on 2/7/24.
//

import Foundation

struct Empresa: Codable, Identifiable, Hashable {
    let id: Int
    let nombre: String
    let resumen: String
    let imagen: String
    let web: String
    let sector: String
    let tamanoEmpresa: String
    let sede: String
    
    
}



