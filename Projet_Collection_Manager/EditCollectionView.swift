//
//  EditCollectionView.swift
//  Projet_Collection_Manager
//
//  Created by Kemal Kazanc on 30/08/2024.
//
import SwiftUI

struct EditCollectionView: View {
    // Variables d'état pour stocker les valeurs des champs de texte
    @State private var pictureUrl: String = ""
    @State private var name: String = ""
    @State private var description: String = ""
    @State private var selectedCategory: Categories? = nil
    
    @State private var date = Date()
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .frame(height: 300)
                            .cornerRadius(10)
                            .padding()
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.gray)
                    }
                    VStack {
                        TextField("Picture Url", text: $pictureUrl)
                            .padding()
                            .frame(height: 30)
                            .border(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal)
                        
                        TextField("Name", text: $name)
                            .padding()
                            .frame(height: 30)
                            .border(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal)
                        
                        HStack {
                            TextField("Prix", text: $description)
                                .padding()
                                .frame(height: 30)
                                .border(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                .padding(.horizontal)
                            Text("€")
                                .padding()
                                .bold()
                        }
                    }
                    DatePicker(
                        "Date :",
                        selection: $date,
                        displayedComponents: [.date]
                    )
                    .bold()
                    .padding()
                    
                    // Liste des catégories
                    VStack(alignment: .leading) {
                        Text("Categories :")
                            .bold()
                        // Section Catégories
                        HStack {
                            ForEach(previewCategories, id: \.name) { category in
                                ZStack {
                                    Rectangle()
                                        .fill(category.color)
                                        .frame(width: 70 , height: 20) // Ajustez la hauteur selon vos besoins
                                        .cornerRadius(8)
                                        .padding(.horizontal, 0)
                                    Text(category.name)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .font(.system(size: 5))
                                        .padding(.horizontal, -10)
                                }
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(.horizontal)
                }
            }
            
            Spacer() // Pousse le bouton vers le bas de la page
            
            Button("Save") {
                print("Prominent Button pressed")
            }
            .buttonStyle(.borderedProminent)
            .padding() // Ajouter un peu de padding pour que le bouton ne soit pas collé en bas de l'écran
        }
    }
}

#Preview {
    EditCollectionView()
}
