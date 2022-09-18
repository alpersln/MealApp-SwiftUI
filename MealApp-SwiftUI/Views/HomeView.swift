//
//  HomeView.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 18.09.2022.
//

import SwiftUI

struct HomeView: View {
 
    var body: some View {
        NavigationView {
            List{
                ForEach(MockData.sampleMealList){ meal in
                    HStack{
                        Image("trek")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        Text(meal.name)
                            .font(.title3)
                            .fontWeight(.medium)
                    }
                }
            }
            
                .navigationTitle("Home")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
