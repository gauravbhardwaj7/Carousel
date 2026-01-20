//
//  ContentView.swift
//  Visas
//
//  Created by Gaurav Bhardwaj on 15/01/26.
//

import SwiftUI
import Combine

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            HeaderView()
                .padding(.top, .spacing_1)
                .padding(.bottom, .spacing_2)

            if !viewModel.isKeyboardVisible {
                withAnimation {
                    CarouselView()
                        .padding(.bottom, .spacing_2)
                        .ignoresSafeArea(edges: .top)
                }
            }

            TitleView()
                .padding(.bottom, .spacing_1)
            
            PhoneNumberInputView()
                .padding(.bottom, .spacing_1)
            
            SeparatorView()
                .padding(.bottom, .spacing_1)
            
            LoginOptionsView()
            
            Spacer()
            
            TermsAndPrivacyView()

        }
        .contentShape(Rectangle())
        .onTapGesture {
            viewModel.hideKeyboard()
        }
        .onAppear {
            viewModel.setupKeyboardObservers()
        }
        .onDisappear {
            viewModel.removeKeyboardObservers()
        }
    }
}

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var isKeyboardVisible = false
        private var cancellables = Set<AnyCancellable>()
        
        func setupKeyboardObservers() {
            NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)
                .sink { [weak self] _ in
                    withAnimation {
                        self?.isKeyboardVisible = true
                    }
                }
                .store(in: &cancellables)
            
            NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
                .sink { [weak self] _ in
                    withAnimation {
                        self?.isKeyboardVisible = false
                    }
                }
                .store(in: &cancellables)
        }
        
        func removeKeyboardObservers() {
            cancellables.removeAll()
        }
        
        func hideKeyboard() {
            UIApplication.shared.sendAction(
                #selector(UIResponder.resignFirstResponder),
                to: nil,
                from: nil,
                for: nil
            )
        }
    }
}

#Preview {
    ContentView()
}
