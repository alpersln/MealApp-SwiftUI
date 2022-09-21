//
//  HomeView.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 18.09.2022.
//

import SwiftUI

struct HomeView: View {
    @StateObject var mealvm = mealViewModel()
    @State var imagg = Image("trek")
    var body: some View {
        NavigationView {
            if mealvm.mealList?.request == nil {
                ProgressView()
            }else {
                List(mealvm.mealList?.request ?? MockData.sampleMealList){  meal in
                    NavigationLink(destination: MealDetailView(mealDetail: meal)) {
                        MealListCell(meal: meal)
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
