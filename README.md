# Shadow Brawler

Shadow fighter game im vibe coding 🎮

## Android App Bundle (AAB) Build

This project is configured to build Android App Bundle (.aab) files for distribution on Google Play Store.

### Prerequisites

- Android SDK 34+
- JDK 17+
- Gradle 8.0+

### Building Locally

```bash
# Build debug APK
./gradlew installDebug

# Build release AAB
./gradlew bundleRelease
```

The built AAB file will be located at: `app/build/outputs/bundle/release/app-release.aab`

### Automated Builds

This project uses GitHub Actions to automatically build the AAB on:
- Push to `main` or `develop` branches
- Pull requests to `main`
- Manual workflow dispatch

Built artifacts are available in the GitHub Actions workflow artifacts section.

### Publishing to Google Play

To publish to Google Play Store:

1. Sign the AAB with your release keystore
2. Upload to Google Play Console
3. Review and publish

For more information, see [Google Play Console Help](https://support.google.com/googleplay/android-developer/answer/9859152)

## License

GPL-3.0 License - See LICENSE file for details
