#!/bin/bash

# Install Flutter
git clone https://github.com/flutter/flutter.git --depth 1
export PATH="$PATH:$(pwd)/flutter/bin"

# Run Flutter build
flutter pub get
flutter build web --release

# Move files to Vercel output dir
cp -r build/web public