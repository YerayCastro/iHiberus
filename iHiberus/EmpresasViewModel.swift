//
//  EmpresasViewModel.swift
//  iHiberus
//
//  Created by Yery Castro on 2/7/24.
//

import SwiftUI

final class EmpresasViewModel: ObservableObject {
    let interactor: Interactor
    @Published var empresas : [Empresa] = []

    init(interactor: Interactor = DataInteractor()) {
        self.interactor = interactor
        do {
            empresas = try interactor.loadData()
        } catch {
            print(error)
            empresas = []
        }
    }
}
