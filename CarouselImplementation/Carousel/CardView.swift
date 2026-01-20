//
//  CardView.swift
//  CarouselImplementation
//
//  Created by Gaurav Bhardwaj on 15/01/26.
//

import SwiftUI

struct CardView: View {
    let card: Card
    let cardWidth: CGFloat
    let cardHeight: CGFloat
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .topTrailing) {
                Image(card.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: cardWidth, height: cardHeight)
                    .overlay{
                        Color.black.opacity(0.1)
                    }
                    .clipped()
                
                Image(.verified)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .clipShape(Circle())
                    .padding()
            }
            .clipShape(RoundedRectangle(cornerRadius: 18))
            
            VStack(alignment: .leading, spacing: .spacing_2) {
                Text(card.countryName)
                    .font(.system(size: 24, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(.leading, .spacing_2)
                
                Text(card.description)
                    .font(.system(size: 12, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(8)
                    .background {
                        UnevenRoundedRectangle(
                            cornerRadii: .init(
                                topLeading: 0,
                                bottomLeading: 0,
                                bottomTrailing: 8,
                                topTrailing: 8
                            )
                        )
                        .fill(Color.indigo)
                    }
            }
            .padding(.bottom, .spacing_5)
        }
        .frame(width: cardWidth, height: cardHeight)
    }
}
