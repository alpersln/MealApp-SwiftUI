//
//  PrettyButton.swift
//  MealApp-SwiftUI
//
//  Created by Alper Sülün on 21.09.2022.
//

import SwiftUI

struct PrettyButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .padding(.all, 12)
            .frame(maxWidth: .infinity,alignment: .center)
    }
}

struct PrettyButton_Previews: PreviewProvider {
    static var previews: some View {
        PrettyButton(title: "title")
    }
}
