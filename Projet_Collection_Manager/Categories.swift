//
//  Categories.swift
//  Projet_Collection_Manager
//
//  Created by Kemal Kazanc on 31/08/2024.
//

import SwiftUI

struct Categories: Identifiable { // Conformance to Identifiable
    let id = UUID() // Unique ID for each category
    let name: String
    let color: Color
}

let previewCategories = [
    Categories(name: "SPORT", color: .red),
    Categories(name: "SUV", color: .purple),
    Categories(name: "BERLIN", color: .blue),
    Categories(name: "COUPE", color: .yellow),
]
