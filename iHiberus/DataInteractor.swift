//
//  DataInteractor.swift
//  iHiberus
//
//  Created by Yery Castro on 2/7/24.
//

import Foundation


protocol Interactor {
    var urlBundle: URL { get }
    var docURL: URL { get }
    
    func loadData<T>() throws -> T where T: Codable
}


struct DataInteractor: Interactor {
    let urlBundle = Bundle.main.url(forResource: "empresas", withExtension: "json")!
    let docURL = URL.documentsDirectory.appending(path: "empresas.json")
    
    
}

extension Interactor {
    func loadData<T>() throws -> T where T: Codable {
        var url = docURL
        if !FileManager.default.fileExists(atPath: url.path()) {
            url = urlBundle
        }
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(T.self, from: data)
    }
}
