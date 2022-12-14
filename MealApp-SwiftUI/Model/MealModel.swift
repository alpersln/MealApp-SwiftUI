//
//  MealModel.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 18.09.2022.
//

import Foundation

struct MealModel: Codable {
    let request: [Result]
}

// MARK: - Request
struct Result: Codable, Identifiable, Hashable {
    let requestDescription: String
    let calories: Int
    let price: Double
    let protein: Int
    let name: String
    let imageURL: String
    let carbs, id: Int

    enum CodingKeys: String, CodingKey {
        case requestDescription = "description"
        case calories, price, protein, name, imageURL, carbs, id
    }
}



struct MockData{
    static let sampleMeal1 = Result(requestDescription: "A beautiful taco", calories: 44, price: 22.21 , protein: 12, name: "asd", imageURL: "123", carbs: 123, id: 1)
    static let sampleMeal2 = Result(requestDescription: "A beautiful spaget", calories: 44, price: 22.21 , protein: 12, name: "asd", imageURL: "123", carbs: 123, id: 2)
    
    static let sampleMealList = [
    sampleMeal1,
    sampleMeal2,
    ]
}
