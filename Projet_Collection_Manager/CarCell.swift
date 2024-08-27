//
//  CarCell.swift
//  Projet_Collection_Manager
//
//  Created by Kemal Kazanc on 27/08/2024.
//
import SwiftUI

struct CarCell: View {
    
    let car: Car
    
    var body: some View {
        HStack(spacing: 16) {
            Image(car.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading) {
                Text(car.brand)
                    .font(.headline)
                    .bold()
                Text(car.model)
                    .font(.subheadline)
                Circle()
                    .foregroundColor(car.color)
                    .frame(height: 20)
                Text(car.dateAchat)
                    .font(.headline)
                    .bold()
            }
            Spacer()
            Text("\\(car.km) km")
                .font(.footnote)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    VStack(spacing: 24) {
        ForEach(previewCars) { car in
            CarCell(car: car)
        }
    }
    .padding()
}
