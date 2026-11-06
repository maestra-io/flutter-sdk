# Maestra SDK for Flutter

The Maestra SDK allows you to integrate mobile push-notifications, in-app messages and client events into your Flutter projects.

## Getting Started

These instructions will help you integrate the Maestra SDK into your Flutter app.

### Installation

Coming soon.

### Initialization

Initialize the Maestra SDK in your Activity or Application class. Check documentation [here](https://developers.maestra.io/docs/initializing-the-sdk) for more details.

### Operations

Learn how to send events to Maestra. Create a new Operation class object and set the respective parameters. Check the [documentation](https://developers.maestra.io/docs/flutter-sdk-methods) for more details.

### Push Notifications

Maestra SDK helps handle push notifications. Configuration and usage instructions can be found in the SDK documentation [here](https://developers.maestra.io/docs/android-push-notification-setup-firebase) and [here](https://developers.maestra.io/docs/copy-of-initializing-the-sdk).

### iOS UISceneDelegate migration

If your iOS app declares `UIApplicationSceneManifest` in `Info.plist`
(Flutter's [recommended iOS lifecycle][flutter-uiscene] since 3.41), follow
[UISCENE_MIGRATION.md](UISCENE_MIGRATION.md) to update your `AppDelegate`
and add a `SceneDelegate`. Apps that keep the legacy `AppDelegate`-only
flow don't need any code changes.

[flutter-uiscene]: https://docs.flutter.dev/release/breaking-changes/uiscenedelegate

### iOS Swift Package Manager

The plugin supports Swift Package Manager alongside CocoaPods. In SPM mode the
main app gets the `Mindbox` iOS SDK automatically; notification extensions need a one-time
Xcode wiring step. See [SPM_MIGRATION.md](SPM_MIGRATION.md). CocoaPods users
need no changes.

## Troubleshooting

Refer to the [example app](example/flutter_example) in case of any issues.

## Further Help

Reach out to us for further help and we'll be glad to assist.

For a better understanding of this content, please familiarize yourself with the Maestra [Flutter SDK](https://developers.maestra.io/docs/flutter-sdk) documentation.
