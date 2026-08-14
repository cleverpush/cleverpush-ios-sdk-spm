# CleverPush iOS SDK — Swift Package Manager

This is the lightweight **Swift Package Manager mirror** for the [CleverPush iOS SDK](https://github.com/cleverpush/cleverpush-ios-sdk).

It distributes the SDK as pre-built XCFramework binary targets, which means SPM resolves this package almost instantly in CI — no full source history to clone.

## Installation

In Xcode: **File → Add Package Dependencies**

Enter the URL:
```
https://github.com/cleverpush/cleverpush-ios-sdk-spm
```

Use version rule: **Up to Next Major Version** from `1.34.52`.

### Available libraries

| Library | Use case |
|---|---|
| `CleverPush` | Core SDK — push notifications, in-app messages |
| `CleverPushExtension` | Notification Service Extension support |
| `CleverPushLocation` | Location-based features |

Most apps only need `CleverPush`.

## CocoaPods

If you use CocoaPods, continue using the main repo as before — nothing changes:
```ruby
pod 'CleverPush', '~> 1.34.52'
```

## Changelog & Releases

All release notes live in the main repo:  
https://github.com/cleverpush/cleverpush-ios-sdk/releases
