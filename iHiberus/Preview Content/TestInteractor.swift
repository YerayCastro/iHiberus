//
//  TestInteractor.swift
//  NewScores
//
//  Created by Yery Castro on 13/2/24.
//

import Foundation

struct TestInteractor: Interactor {
    let urlBundle = Bundle.main.url(forResource: "empresasTest", withExtension: "json")!
    let docURL = URL.documentsDirectory.appending(path: "empresasTest.json")
}

extension EmpresasViewModel {
    static let preview = EmpresasViewModel(interactor: TestInteractor())
}

extension Empresa {
    static let test = Empresa(id: 1,
                              nombre: "Hiberus",
                              resumen: "Somos una compañía especializada en TIC, consultoría tecnológica y transformación digital. Somos la primera tecnológica española en crecimiento por tercer año consecutivo. Actualmente, nuestra compañía posee un equipo de más de 3000 profesionales, más de 42 áreas de especialización y 36 hubs de desarrollo en España, Estados Unidos, Reino Unido, Alemania, Rumanía, Italia, Andorra, Marruecos, Argentina, México y Colombia. A través de la especialización tecnológica y la visión de negocio y sector creamos modelos de servicio 360º que se adaptan a las necesidades de nuestros clientes. Nuestra actividad, servicios y soluciones se estructuran a través de 6 áreas de actividad (cloud services, application management, enterprise efficiency, data intelligence, business value y total experience) y 12 mercados (sector público, sanidad, construcción e ingeniería, telecom, energía y utilities, banca y servicios financieros, transporte y logística, industria, agroalimentario, medios de comunicación, retail y distribución, travel y entretenimiento y facility services). Y es que, en hiberus estamos viviendo un crecimiento explosivo.",
                              imagen: "Logo Hiberus",
                              web: "https://www.hiberus.com",
                              sector: "Servicios y consultoría de TI",
                              tamanoEmpresa: "1001-5000 empleados",
                              sede: "Zaragoza, Zaragoza")
}
