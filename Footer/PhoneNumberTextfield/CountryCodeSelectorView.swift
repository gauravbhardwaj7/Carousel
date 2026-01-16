//
//  CountryCodeSelector.swift
//  Visas
//
//  Created by Gaurav Bhardwaj on 15/01/26.
//

import SwiftUI

struct CountryCodeSelectorView: View {
    var body: some View {
        HStack(spacing: 6) {
            Image(.indianFlag)
                .resizable()
                .frame(width: 24, height: 24)
                .clipShape(RoundedRectangle(cornerRadius: 2))
            
            Text("+91")
                .font(.system(size: 14, weight: .medium))
            
            Image(systemName: "chevron.down")
                .resizable()
                .frame(width: 8, height: 5)
                .offset(x: -3)
        }
        .padding(.leading, .spacing_2)
    }
}

#Preview {
    CountryCodeSelectorView()
}
