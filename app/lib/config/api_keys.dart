// lib/config/api_keys.dart
//
// API keys are supplied at build time, never committed.
//
//   flutter run \
//     --dart-define=GEMINI_API_KEY=your_key \
//     --dart-define=GOOGLE_MAPS_API_KEY=your_key
//
// The Android Maps SDK key is separate and comes from local.properties
// via the MAPS_API_KEY manifest placeholder. See android/app/build.gradle.

class ApiKeys {
  const ApiKeys._();

  static const String gemini = String.fromEnvironment('GEMINI_API_KEY');

  static const String googleMaps = String.fromEnvironment('GOOGLE_MAPS_API_KEY');

  static bool get isConfigured => gemini.isNotEmpty && googleMaps.isNotEmpty;
}
