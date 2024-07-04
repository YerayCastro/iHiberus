//
//  ContentView.swift
//  iHiberus
//
//  Created by Yery Castro on 2/7/24.
//

import SwiftUI

struct EmpresasView: View {
    @EnvironmentObject var vm: EmpresasViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.empresas) { empresa in
                    NavigationLink(value: empresa) {
                        CellView(title: empresa.nombre, subtitle: empresa.sector)
                    }
                    .navigationDestination(for: Empresa.self) { empresa in
                        EmpresaDetailView(empresa: empresa)
                    }
                }
                
            }
            .navigationTitle("Empresas")
        }
    }
}

#Preview {
    EmpresasView()
        .environmentObject(EmpresasViewModel())
}


