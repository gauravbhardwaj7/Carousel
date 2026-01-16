# Carousel Implementation

SwiftUI Implementation Of Carousel 

## Overview

This project demonstrates a carousel implementation with:
- Interactive card carousel with scroll animations
- Scale effects on card transitions
- Page indicators

## Video
https://github.com/user-attachments/assets/ad7ae791-7b43-410f-8dc7-2c25aebe0268

## Architecture

The project follows **MVVM (Model-View-ViewModel)** architecture pattern with a modular, feature-based folder structure.


### Architecture Components

```
CarouselImplementation/
├── Carousel/              # Carousel feature module
│   ├── Model/             # Data models
│   └── ViewModel/         # Business logic & state
├── Header/                # Header UI components
├── Footer/                # Form & input components
├── Utils/                 # Shared utilities & design system
└── EntryPoint/            # App initialization
```

### Key Architectural Decisions

- **ViewModels**: Encapsulate state and business logic, making views testable and reusable
- **Design System**: Centralized colors and spacing via extensions for consistency
- **Component-Based**: Reusable, composable SwiftUI views
- **Lifecycle Management**: Proper observer setup/cleanup for memory efficiency

## Setup

### Requirements
- Xcode 15.0+
- iOS 17.0+
- Swift 5.9+

### Installation

1. Open `CarouselImplementation.xcodeproj` in Xcode
2. Build and run the project

No external dependencies required.

