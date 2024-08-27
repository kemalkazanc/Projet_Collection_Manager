//
//  Car.swift
//  Projet_Collection_Manager
//
//  Created by Kemal Kazanc on 27/08/2024.
//
import SwiftUI

struct CollectibleItem: Identifiable {
    let id = UUID()
    let brand: String
    let model: String
    let color: Color
    let km: Int
    let image: String
    let dateAchat: Date
}

let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yy"
    return formatter
}()

// Gestion sûre des dates avec une valeur par défaut en cas d'erreur
func safeDate(from string: String) -> Date {
    return dateFormatter.date(from: string) ?? Date()
}

let previewCars = [
    CollectibleItem(
        brand: "Porsche",
        model: "911 GT3",
        color: .blue,
        km: 35_290,
        image: "Porsche-911",
        dateAchat: safeDate(from: "10/11/22")
    ),
    CollectibleItem(
        brand: "Togg",
        model: "Sedan",
        color: .gray,
        km: 12_394,
        image: "Togg",
        dateAchat: safeDate(from: "10/11/22")
    ),
    CollectibleItem(
        brand: "Mercedes",
        model: "AMG GT",
        color: .yellow,
        km: 29_012,
        image: "Mercedes",
        dateAchat: safeDate(from: "10/11/22")
    )
]

