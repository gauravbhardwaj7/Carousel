# Carousel Implementation

A SwiftUI application featuring an interactive carousel component with smooth animations.

## Overview

This project demonstrates a carousel implementation with:
- Interactive card carousel with scroll animations
- Scale effects on card transitions
- Page indicators
- User interface components for authentication

## Architecture

The project follows a modular structure:

```
CarouselImplementation/
├── Carousel/              # Carousel components
├── Header/                # App header
├── Footer/                # Form components
├── Utils/                 # Shared utilities
└── EntryPoint/           # App entry point
```

## Features

- **Carousel**: Horizontal scrolling cards with scale animations
- **Cards**: Display images with country information
- **UI Components**: Phone input, login options, and form elements

## Setup

### Requirements
- Xcode 15.0+
- iOS 17.0+
- Swift 5.9+

### Installation

1. Open `CarouselImplementation.xcodeproj` in Xcode
2. Build and run the project

No external dependencies required.

## Project Structure

- **CarouselView**: Main carousel container with scroll management
- **CardView**: Individual card component
- **ViewModel**: Manages carousel state and data
- **UI Extensions**: Design system (colors, spacing)

## Notes

- Uses native SwiftUI frameworks
- MVVM architecture pattern
- Supports light and dark mode

---

**Created by**: Gaurav Bhardwaj
