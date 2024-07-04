//
//  HeaderView.swift
//  iHiberus
//
//  Created by Yery Castro on 3/7/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .bold()
            Text(text)
        }
    }
}

#Preview {
    HeaderView(title: "Acerca de nosotros", text: "Somos una compañía especializada en TIC, consultoría tecnológica y transformación digital. Somos la primera tecnológica española en crecimiento por tercer año consecutivo. Actualmente, nuestra compañía posee un equipo de más de 3000 profesionales, más de 42 áreas de especialización y 36 hubs de desarrollo en España, Estados Unidos, Reino Unido, Alemania, Rumanía, Italia, Andorra, Marruecos, Argentina, México y Colombia. A través de la especialización tecnológica y la visión de negocio y sector creamos modelos de servicio 360º que se adaptan a las necesidades de nuestros clientes. Nuestra actividad, servicios y soluciones se estructuran a través de 6 áreas de actividad (cloud services, application management, enterprise efficiency, data intelligence, business value y total experience) y 12 mercados (sector público, sanidad, construcción e ingeniería, telecom, energía y utilities, banca y servicios financieros, transporte y logística, industria, agroalimentario, medios de comunicación, retail y distribución, travel y entretenimiento y facility services). Y es que, en hiberus estamos viviendo un crecimiento explosivo.")
}
