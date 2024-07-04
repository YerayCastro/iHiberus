//
//  iHiberusApp.swift
//  iHiberus
//
//  Created by Yery Castro on 2/7/24.
//

import SwiftUI

@main
struct iHiberusApp: App {
    @StateObject var vm = EmpresasViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .environmentObject(vm)
    }
}
