//
//  CarDetailsView.swift
//  Projet_Collection_Manager
//
//  Created by Kemal Kazanc on 30/08/2024.
//
import SwiftUI

struct CarDetailsView: View {
    let car: CollectionItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(car.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 280)
                .clipped()
            
            VStack(alignment: .leading, spacing: 16) {
                Text(car.categorie)
                    .font(.headline)
                    .foregroundColor(.gray)
                HStack {
                    VStack(alignment: .leading) {
                        Text(car.brand)
                            .font(.title)
                            .bold()
                        Text(car.model)
                            .font(.title3)
                            .fontWeight(.light)
                    }
                    Spacer()
                    VStack(alignment: .trailing, spacing: 12) {
                        Circle()
                            .foregroundColor(car.color)
                            .frame(height: 20)
                        Text("\(car.km) km")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 70)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    CarDetailsView(car: previewCollectionItem[0])
}
