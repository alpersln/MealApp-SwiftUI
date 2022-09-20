//
//  AccountView.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 18.09.2022.
//

import SwiftUI

struct AccountView: View {

    @StateObject var viewModel = AccountViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section("Personal Info") {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email).keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    DatePicker("Birthday", selection: $viewModel.birthday)
                }
                Section("Requests") {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Refill Your Bottle", isOn: $viewModel.refillBottle)
                }.tint(.orange)
                Button("Save Changes"){
                     viewModel.isValidForm ? print("valid") : print("missing")
                }
            }
            .navigationBarTitle("Account")
            
        }

    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
