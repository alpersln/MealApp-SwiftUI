//
//  MealDetailView.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 20.09.2022.
//

import SwiftUI

struct MealDetailView: View {
    let mealDetail: Result
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

//                    VStack{
//                        Text("Calories")
//                        Text("\(mealDetail.calories)").foregroundColor(.gray)
//                    }
//                    VStack{
//                        Text("Carbs")
//                        Text("\(mealDetail.carbs)").foregroundColor(.gray)
//                    }
//                    VStack{
//                        Text("Protein")
//                        Text("\(mealDetail.protein)").foregroundColor(.gray)
//                    }
                }
                Spacer()

                // MARK: - Button

                Button(action: {
                    print("ot")
                    
                }) {
                Text("$\(mealDetail.price,specifier: "%.2f")  -  Add To Order")
                        .font(.title3)
                        .fontWeight(.semibold)
                    .padding(.all, 12)
                }.buttonStyle(.bordered)
                    .tint(.orange)
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
