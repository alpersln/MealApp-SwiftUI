//
//  HomeView.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 18.09.2022.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var mealvm = mealViewModel()
    @State var imagg = Image("trek")
    var body: some View {
        NavigationView {
            if mealvm.mealList?.request == nil {
                ProgressView()
            }else {
                List(mealvm.mealList?.request ?? MockData.sampleMealList){  meal in
                    NavigationLink(destination: MealDetailView(mealDetail: meal)) {
                        HStack{
                            AsyncImage(url: URL(string: "\(meal.imageURL)")){ image in
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
                                Text(mealvm.mealList?.request[1].name ?? "")
                            }
                            .padding()
                        }
                    }
                    
                }
                .navigationBarTitle("Home")
            }
        }.task {
            await mealvm.fetchData()
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
