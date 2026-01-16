//
//  CarouselView.swift
//  Visas
//
//  Created by Gaurav Bhardwaj on 15/01/26.
//


import SwiftUI

struct CarouselView: View {
    @StateObject var viewModel = ViewModel()

    var body: some View {
        let cardWidth = 250.0
        GeometryReader { geometry in
            let horizontalPadding = (geometry.size.width - cardWidth) / 2
            VStack(spacing: .spacing_4) {
                ScrollViewReader { proxy in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: -30) {
                            ForEach(viewModel.cards) { card in
                                CardView(
                                    card: card,
                                    cardWidth: cardWidth,
                                    cardHeight: cardWidth
                                )
                                .id(card.id)
                                .zIndex(card.id == viewModel.activeIndex ? 1 : 0)
                                .scrollTransition(
                                    topLeading: .interactive,
                                    bottomTrailing: .interactive,
                                    axis: .horizontal
                                ) { content, phase in
                                    content.scaleEffect(phase.isIdentity ? 1.0 : 0.7)
                                }
                            }
                        }
                        .padding(.horizontal, horizontalPadding)
                        .scrollTargetLayout()
                    }
                    .scrollPosition(id: $viewModel.activeIndex)
                    .scrollTargetBehavior(.viewAligned)
                    .task {
                        let middleIndex = max((viewModel.cards.count - 1) / 2, 0)
                        proxy.scrollTo(middleIndex, anchor: .leading)
                    }
                }

                HStack(spacing: 8) {
                    ForEach(viewModel.cards) { card in
                        Circle()
                            .fill(card.id == viewModel.activeIndex ? .gray : .gray.opacity(0.3))
                            .frame(width: 8, height: 8)
                    }
                }
            }
        }
    }
}


#Preview {
    CarouselView()
}





