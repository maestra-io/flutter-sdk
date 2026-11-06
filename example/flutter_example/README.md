# Example app for Maestra SDK for flutter

This is an example of SDK [integration](https://developers.maestra.io/docs/flutter-sdk)

## Getting Started

### IOS
1. Clone [flutter-sdk repository](https://github.com/maestra-io/flutter-sdk).
2. Go to `flutter-sdk/example/flutter_example`.
3. From the terminal:
 ```
 flutter pub get
 ```
4. Make sure you have CocoaPods installed or install it according to the instructions.
5. Go to `ios/Runner`.
6. Install pods:
```
pod install
```
7. [Configure your endpoints](https://developers.maestra.io/docs/setting-up-integration-points).
8. The example ships with placeholder endpoints (`YourProject.FlutterExample.IosApp`, `YourProject.FlutterExample.AndroidApp`). Replace them in `main.dart` with the ones from your Maestra project.
9. Launch `Runner.xcworkspace` .
10. Launch app.

Now you can test in-apps on the simulator. 
In-apps configured for your endpoints in Maestra will be shown there. 
To run the application on a real device and try push notifications, follow the instructions below.

11. Set your [team](https://developers.maestra.io/docs/ios-get-keys) and change bundle identifiers and App Group name for next targets:
  - Runner
  - MindboxNotificationServiceExtension
  - MindboxNotificationContentExtension

### Android
1. Clone [flutter-sdk repository](https://github.com/maestra-io/flutter-sdk).
2. Go to `flutter-sdk/example/flutter_example`.
3. From the terminal:
 ```
 flutter pub get
 ```
4. Open `android` folder in Android Studio.
5. Change `namespace` and `applicationId` in `app/build.gradle` to yours.
6. Add `google-services.json` to `android/app`.
- [Get google-services.json](https://developers.maestra.io/docs/firebase-key-setup)
7. [Configure your endpoints](https://developers.maestra.io/docs/setting-up-integration-points).
8. Replace the placeholder endpoints in `main.dart` with yours.
9. Launch app.

### SDK functionality testing
1. To check innap when opening:
  - [Read this](https://help.maestra.io/mobile-app-personalization/creating-an-in-app-message).
  - Open app.
2. To check the inapp anywhere in the application:
  - [Read this](https://help.maestra.io/mobile-app-personalization/how-to-display-an-in-app-anywhere-in-the-app).
  - Replace `operationSystemName` in `syncOperation` and `asyncOperation` in `view_model.dart`.
  - Click to the button `Show in-app` opposite the selected operation.
3. To check push notifications:
  - Read [iOS](https://developers.maestra.io/docs/copy-of-initializing-the-sdk).
  - Read [android with Firebase](https://developers.maestra.io/docs/android-push-notification-setup-firebase).
  - Send a notification from your account.
4. To check rich-push notifications:
  - Read [iOS](https://developers.maestra.io/docs/ios-setting-up-rich-push-notifications). 
  - Read [android with Firebase](https://developers.maestra.io/docs/android-push-notification-setup-firebase). 
  - Send a notification from your account.

### Additionally
  - Currently the In-App only comes once per session.
  - There are comments and links in the flutter example code that can help you.
