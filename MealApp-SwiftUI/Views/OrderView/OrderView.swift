//
//  OrderView.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 18.09.2022.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var orderVM: OrderViewModel
    @StateObject var mealVm = mealViewModel()
    
    var body: some View {
        NavigationView {
            
            VStack {
                if  orderVM.orderedMealList.isEmpty{
                    emptyState
                } else {
                    List{
                        ForEach(orderVM.orderedMealList) { order in
                            MealListCell(meal: order)
                        }.onDelete(perform: orderVM.deleteItems)
                    } .listStyle(.plain)
                    VStack{
                        Button {
                            print("order")
                        } label: {
                            PrettyButton(title: "$\(orderVM.totalPrice,specifier: "%.2f") ORDER NOW")
                        }.buttonStyle(.bordered)
                            .tint(.orange)
                            .frame(alignment: .bottom)
                        
                    }
                }
                
            }.navigationBarTitle("Order")
        }
    }
}

var emptyState : some View{
    VStack{
        Image("empty-order")
            .resizable()
            .scaledToFit()
            .padding()
        Text("You don't have any order")
            .font(.title3)
            .foregroundColor(.gray)
            .fontWeight(.semibold)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
