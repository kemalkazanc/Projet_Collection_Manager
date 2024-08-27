//
//  ContentView.swift
//  Projet_Collection_Manager
//
//  Created by Kemal Kazanc on 27/08/2024.
//
import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State private var isAddCollection = false
    @State private var selectedCategories: Category? = nil
    
    var body: some View {
        NavigationStack {
            VStack {
                // Barre de recherche
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Rechercher une voiture...", text: $searchText)
                        .padding(10)
                }
                .padding(.horizontal)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
                
                // Section Catégories
                HStack {
                    ForEach(previewCategories, id: \.name) { category in
//                        Button(action: {
//                            selectedCategories = category
//                        }) {
                            ZStack {
                                // Rectangle
                                Rectangle()
                                    .fill(category.color)
                                    .frame(width: 70 , height: 20) // Ajustez la hauteur selon vos besoins
                                    .cornerRadius(8)
                                    .padding(.horizontal, 0)
                                // Texte
                                Text(category.name)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .font(.system(size: 5))
                                    .padding(.horizontal, -10)
//                            }
                        }
                    }
                }
                
                // Liste des voitures
                List(previewCollectionItem) { collectionCar in
                    NavigationLink {
                        CarDetailsView(car: collectionCar)
                    } label: {
                        CarInfoView(collectionCar: collectionCar)
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Ma Collection")
                // Bouton Ajouter
                Button(action: {
                    isAddCollection = true
                },
                       label: {
                    Text("Ajouter")
                })
                .sheet(isPresented: $isAddCollection) {
                    EditCollectionView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
