//
//  HeaderView.swift
//  CarouselImplementation
//
//  Created by Gaurav Bhardwaj on 15/01/26.
//


import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(spacing: .spacing_0) {
            VStack {
                VStack(alignment: .trailing, spacing: -20) {
                    HStack(spacing: .spacing_0) {
                        Rectangle()
                            .fill(Color.appPrimary)
                            .frame(width: 44, height: 2)
        
                        Image(systemName: "airplane")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    .offset(x: 6)
                    
                    Text("atlys")
                        .font(.system(size: 50, weight: .semibold))
                }
            }

            Text("visas on time")
                .font(.system(size: 12, weight: .bold))
                .foregroundStyle(Color.appPrimary)
        }
    }
}
