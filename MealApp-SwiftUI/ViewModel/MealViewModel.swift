//
//  MealViewModel.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 18.09.2022.
//
import SwiftUI

//class mealViewModel : ObservableObject {
//    @Published var mealList:Result?
//    
//    
//    func fetchData() async{
//        guard let url = URL(string: "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers") else {
//            print("error with url")
//            return
//        }
//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//            if let decodedResponse = try? JSONDecoder().decode(Result.self, from: data) {
//                mealList = decodedResponse
//            }
//        } catch {
//            print("Invalid data")
//        }
//    }
//    
//    
//}
