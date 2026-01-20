//
//  PhoneNumberInputView.swift
//  Visas
//
//  Created by Gaurav Bhardwaj on 15/01/26.
//

import SwiftUI

struct PhoneNumberInputView: View {
    @State private var phone: String = ""
    
    var body: some View {
        VStack(spacing: .spacing_4) {
            HStack(spacing: .spacing_2) {
                CountryCodeSelectorView()
                TextField("Enter mobile number", text: $phone)
                    .keyboardType(.numberPad)
                    .padding(.vertical, .spacing_2)
                    .padding(.horizontal, .spacing_2)
            }
            .frame(height: 50)
            .background(Color.appBackground)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.appBorder, lineWidth: 1)
            )
            .cornerRadius(12)
            
            ContinueButton(isEnabled: !phone.isEmpty) {
                
            }
        }
        .padding(.horizontal, .spacing_4)
    }
}

#Preview {
    PhoneNumberInputView()
}
