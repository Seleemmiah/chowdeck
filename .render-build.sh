#!/bin/bash
set -euo pipefail

# Install Flutter
git clone https://github.com/flutter/flutter.git --depth 1
export PATH="$PATH:$(pwd)/flutter/bin"

# Build
flutter pub get
flutter build web --release

# Move files to expected location
mkdir -p public
cp -r build/web/* public/