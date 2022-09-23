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
                List{
                    ForEach(orderVM.orderedMealList) { order in
                        MealListCell(meal: order)
                    }.onDelete(perform: orderVM.deleteItems)
                    Button {
                        print("order")
                    } label: {
                        PrettyButton(title: "\(orderVM.totalPrice,specifier: "%.2f") ORDER NOW")
                    }.buttonStyle(.bordered)
                        .tint(.orange)
                    Spacer()
                }
                .listStyle(.plain)
            .navigationBarTitle("Order")

                
        }
        //.environmentObject(mealVm)
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
