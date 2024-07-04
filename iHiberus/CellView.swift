//
//  CellView.swift
//  iHiberus
//
//  Created by Yery Castro on 3/7/24.
//

import SwiftUI

struct CellView: View {
    let title: String
    let subtitle: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .bold()
            Text(subtitle)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    CellView(title: "Hiberus", subtitle: "Servicios y consultoría de TI")
}
