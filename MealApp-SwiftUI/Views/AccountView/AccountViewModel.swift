//
//  AccountViewModel.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 20.09.2022.
//

import Foundation
import SwiftUI


final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthday = Date()
    
    @Published var extraNapkins = false
    @Published var refillBottle = false
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else{
            return false
        }
        guard email.isValidEmail else {
            return false
        }
        return true
    }
    
    
}
