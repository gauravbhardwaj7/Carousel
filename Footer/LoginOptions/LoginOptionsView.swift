//
//  LoginOptionsView.swift
//  Visas
//
//  Created by Gaurav Bhardwaj on 15/01/26.
//

import SwiftUI

struct LoginOptionsView: View {
    private let rows = [GridItem(.fixed(100))]
    
    var body: some View {
        LazyHGrid(rows: rows, spacing: 60) {
           LoginItemView(image: .google, action: {})
           LoginItemView(image: .appleLogo, action: {})
           LoginItemView(image: .emailLogo, action: {})
        }
    }
}


#Preview {
    LoginOptionsView()
}
