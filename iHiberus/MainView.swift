//
//  MainView.swift
//  iHiberus
//
//  Created by Yery Castro on 3/7/24.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var vm: EmpresasViewModel
    
    var body: some View {
        TabView {
            HiberusView()
                .tabItem { Label("Hiberus", systemImage: "person.fill") }
            EmpresasView()
                .tabItem { Label("Empresas", systemImage: "applelogo") }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(EmpresasViewModel())
}
