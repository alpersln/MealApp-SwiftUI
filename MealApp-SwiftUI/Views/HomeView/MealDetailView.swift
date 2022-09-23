//
//  MealDetailView.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 20.09.2022.
//

import SwiftUI

struct MealDetailView: View {
    let mealDetail: Result
    
    @StateObject var mealVM = mealViewModel()
    @EnvironmentObject var orderVM:OrderViewModel
    
    var body: some View {
        VStack {
                AsyncImage(url: URL(string: "\(mealDetail.imageURL)")){ image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                .frame(maxWidth: .infinity, maxHeight: 300)
            
                
                Spacer()
                
            VStack {
                Text(mealDetail.name)
                        .font(.headline)
                    .fontWeight(.bold)
                
                Text(mealDetail.requestDescription)
                    .foregroundColor(.gray)
                    .padding(.top)
                    .multilineTextAlignment(.center)
            }
            Spacer()

                // MARK: - cal, carbs, protein

            HStack(spacing:40){
                    NutritionInfo(title: "Calories", value: mealDetail.calories)
                    NutritionInfo(title: "Carbs", value: mealDetail.carbs)
                    NutritionInfo(title: "Protein", value: mealDetail.protein)
                }
                Spacer()

                // MARK: - Button

                Button(action: {
                    orderVM.orderedMealList.append(mealDetail)
                   
                    print(orderVM.orderedMealList.count)
                }) {
                    PrettyButton(title: "$\(mealDetail.price,specifier: "%.2f")  -  Add To Order")
                }.buttonStyle(.bordered)
                    .tint(.orange)
                    .padding()
                Spacer()

            }
        
    }
}

struct MealDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MealDetailView(mealDetail:Result(requestDescription: "", calories: 2, price: 23.32, protein: 2, name: "lalala", imageURL: "", carbs: 3, id: 4))
    }
}

struct NutritionInfo: View {
    let title:String
    let value: Int
    
    var body:some View {
        VStack(spacing:5){
            Text(title)
            Text("\(value)").foregroundColor(.gray)
        }
    }
}
