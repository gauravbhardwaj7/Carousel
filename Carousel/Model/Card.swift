//
//  Card.swift
//  CarouselImplementation
//
//  Created by Gaurav Bhardwaj on 15/01/26.
//

import Foundation
import SwiftUI
struct Card: Identifiable, Hashable {
    let index: Int
    let image: ImageResource
    let countryName: String
    let description: String

    var id: Int { index }
}
