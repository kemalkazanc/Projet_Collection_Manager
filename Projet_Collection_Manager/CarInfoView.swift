import SwiftUI

struct CarInfoView: View {
    let collectionCar: CollectionItem
    
    var body: some View {
        HStack(spacing: 16) {
            Image(collectionCar.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading) {
                Text(collectionCar.brand)
                    .font(.headline)
                    .bold()
                Text(collectionCar.model)
                    .font(.subheadline)
                Text(collectionCar.categorie)
                    .font(.headline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            VStack{
                Text("\(collectionCar.km) km")
                    .font(.footnote)
                Circle()
                    .foregroundColor(collectionCar.color)
                    .frame(width: 20, height: 20)
            }
//            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    VStack(spacing: 24) {
        ForEach(previewCollectionItem) { collectionCar in
            CarInfoView(collectionCar: collectionCar)
        }
    }
    .padding()
}

