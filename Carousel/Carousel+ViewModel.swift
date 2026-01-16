//
//  Carousel+ViewModel.swift
//  CarouselImplementation
//
//  Created by Gaurav Bhardwaj on 16/01/26.
//

import Foundation
import Combine

extension CarouselView{
    class ViewModel:ObservableObject{
        let cards: [Card] = [
            Card(index: 0, image: .thailand, countryName: "Thailand", description: "32K+ Visas on Atlys"),
            Card(index: 1, image: .malaysia, countryName: "Malaysia", description: "12K+ Visas on Atlys"),
            Card(index: 2, image: .dubai, countryName: "Dubai", description: "53K+ Visas on Atlys")
        ]
        
        @Published var activeIndex: Int?
        
        init() {
            let middleIndex = cards.isEmpty ? nil : (cards.count - 1) / 2
            _activeIndex = Published(initialValue: middleIndex)
        }
    }
}
