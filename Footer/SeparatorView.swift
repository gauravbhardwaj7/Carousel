//
//  SeparatorView.swift
//  Visas
//
//  Created by Gaurav Bhardwaj on 15/01/26.
//

import SwiftUI

struct SeparatorView: View {
    var body: some View {
        HStack(spacing: .spacing_2) {
            Rectangle()
                .fill(Color.appBorder)
                .frame(height: 1)
            
            Text("or")
                .font(.system(size: 20, weight: .medium))
                .foregroundStyle(Color.appTextSecondary)
            
            Rectangle()
                .fill(Color.appBorder)
                .frame(height: 1)
        }
        .padding(.horizontal, .spacing_4)
    }
}

#Preview {
    SeparatorView()
}
