//
//  EmpresaDetailView.swift
//  iHiberus
//
//  Created by Yery Castro on 3/7/24.
//

import SwiftUI

struct EmpresaDetailView: View {
    let empresa: Empresa
    var body: some View {
        ScrollView {
            VStack {
                Image(empresa.imagen)
                    .resizable()
                    .scaledToFit()
                VStack(alignment: .leading) {
                    HeaderView(title: "Acerca de nosotros", text: empresa.resumen)
                    HeaderView(title: "Sector", text: empresa.sector)
                    HeaderView(title: "Dirección Web", text: empresa.web)
                    HeaderView(title: "Sede", text: empresa.sede)
                    HeaderView(title: "Tamaño de la empresa", text: empresa.tamanoEmpresa)
                }
                .padding(.leading)
                .padding(.top)
            }
        }
    }
}

#Preview {
    EmpresaDetailView(empresa: Empresa.test)
}
