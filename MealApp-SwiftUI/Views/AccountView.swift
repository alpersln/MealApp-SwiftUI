//
//  AccountView.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 18.09.2022.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            Text("account")
                .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}