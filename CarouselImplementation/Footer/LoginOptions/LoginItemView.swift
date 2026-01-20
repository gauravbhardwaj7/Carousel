//
//  LoginItem.swift
//  CarouselImplementation
//
//  Created by Gaurav Bhardwaj on 16/01/26.
//

import Foundation
import SwiftUI

struct LoginItemView: View {
    let image: ImageResource
    var action: () -> Void = {}
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(image)
                .resizable()
                .frame(width: 24, height: 24)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .padding(24)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        )
                        .shadow(radius: 1)
                )
        }
    }
}
