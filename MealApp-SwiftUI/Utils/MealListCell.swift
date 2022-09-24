//
//  MealListCell.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 21.09.2022.
//

import SwiftUI
import CachedAsyncImage

struct MealListCell: View {
    
    let meal:Result
    
    var body: some View {
        HStack{
            CachedAsyncImage(url: URL(string: "\(meal.imageURL)")){ image in
                image.resizable()
                
            } placeholder: {
                
                ProgressView()
                
            }
            .frame(width: 100, height: 100)
            
            VStack(alignment:.leading) {
                Text(meal.name)
                    .font(.title3)
                    .fontWeight(.medium)
                Text("$\(meal.price,specifier: "%.2f")")
                
            }
            .padding()
        }
    }
}

struct MealListCell_Previews: PreviewProvider {
    static var previews: some View {
        MealListCell(meal: MockData.sampleMeal1)
    }
}
