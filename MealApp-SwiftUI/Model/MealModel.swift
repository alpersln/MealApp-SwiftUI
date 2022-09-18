//
//  MealModel.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 18.09.2022.
//

import Foundation


struct MealModel: Decodable,Identifiable {
    let id: String
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct Result {
    let request: [MealModel]
}


struct MockData{
    static let sampleMeal = MealModel(id: "123", name: "Taccoo", description: "A beautiful taco", price: 12.32, imageURL: "asd", calories: 123, protein: 123, carbs: 123)
    
    static let sampleMealList = [
    sampleMeal,
    sampleMeal,
    sampleMeal,
    sampleMeal
    ]
}
