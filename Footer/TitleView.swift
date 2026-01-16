//
//  TitleView.swift
//  Visas
//
//  Created by Gaurav Bhardwaj on 15/01/26.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack{
            Text("Get Visas")
            Text("On Time")
        }
        .font(.system(size: 40, weight: .bold))
    }
}

#Preview {
    TitleView()
}
