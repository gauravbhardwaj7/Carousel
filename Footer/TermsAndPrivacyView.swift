//
//  TermsAndPrivacyView.swift
//  Visas
//
//  Created by Gaurav Bhardwaj on 15/01/26.
//

import SwiftUI

struct TermsAndPrivacyView: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("By continuing, you agree to our ")
            Text("terms")
                .underline()
            Text(" & ")
            Text("privacy")
                .underline()
            Text(" policy.")
        }
        .font(.system(size: 14, weight: .regular))
        .foregroundStyle(Color.appTextPrimary)
    }
}

#Preview {
    TermsAndPrivacyView()
}
