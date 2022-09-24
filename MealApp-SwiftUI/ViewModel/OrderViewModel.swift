//
//  OrderViewModel.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 21.09.2022.
//

import Foundation


class OrderViewModel : ObservableObject {
    
    @Published var orderedMealList:[Result] = []
    
    var totalPrice: Double {
        orderedMealList.reduce(0){
            $0 + $1.price
        }
    }
    
    func deleteItems(at offsets:IndexSet){
        orderedMealList.remove(atOffsets: offsets)
    }
}
