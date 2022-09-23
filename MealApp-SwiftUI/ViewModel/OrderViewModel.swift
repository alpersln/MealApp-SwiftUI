//
//  OrderViewModel.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 21.09.2022.
//

import Foundation


class OrderViewModel : ObservableObject {
    
    @Published var orderedMealList:[Result] = [
        Result(requestDescription: "asd", calories: 2, price: 23.22, protein: 2, name: "beef stok", imageURL: "e", carbs: 23, id: 3)
    ]
    
    var totalPrice: Double {
        orderedMealList.reduce(0){
            $0 + $1.price
        }
    }
    
    func deleteItems(at offsets:IndexSet){
        orderedMealList.remove(atOffsets: offsets)
    }
}
