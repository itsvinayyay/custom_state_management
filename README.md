# Flutter Counter App

A simple Flutter application that implements a counter functionality with a custom state management approach using `InheritedNotifier`. This project demonstrates efficient widget rebuilding and state propagation in Flutter.

---

## Features
- Custom state management using `InheritedNotifier`.
- Efficient rebuilding of widgets that depend on state changes.
- A floating action button to increment the counter value.
- Minimalistic UI with modular components for better performance.

---

## Screenshots

![Counter App Screenshot](screenshot.png) <!-- Add a screenshot of your app here. Replace the file name if needed. -->

---

## Installation


### Prerequisites
- Install [Flutter](https://docs.flutter.dev/get-started/install) on your machine.
- Make sure you have an editor like [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).

### Clone the Repository
```bash
git clone <repository-url>
cd <project-folder> 
```


## Installation

To run this project locally, follow these steps:
### Install Dependencies
Run the following command to fetch all the dependencies:

```bash
flutter pub get
```

### Run the Application
Run the application on your connected device or emulator:
``` bash
flutter run
```

## Code Explanation

### State Management
This app uses a custom state management approach based on the `InheritedNotifier` class.

#### `CounterData` Class:
- Extends `ChangeNotifier` to handle state changes.
- Contains methods to increment the counter and notify listeners.

#### `CounterProvider` Class:
- Inherits from `InheritedNotifier` to propagate state updates to dependent widgets.
- Provides a static `of` method to access the state object.

### Efficient Rebuilding:
- Only widgets depending on the counter value (like `CounterTextWidget`) are rebuilt on state changes.

### Dependencies
This project uses the following Flutter SDK dependencies:

- `flutter`: A framework for building cross-platform applications.

### How It Works
1. The counter state is managed by the `CounterData` class.
2. `CounterProvider` wraps the widget tree and notifies dependent widgets when the counter value changes.
3. Widgets like `CounterTextWidget` rebuild only when they detect state changes using the `CounterProvider.of(context)` method.


## Conclusion

This project demonstrates how to manage state in a Flutter app using a custom approach with `InheritedNotifier`. By utilizing the `ChangeNotifier` and `InheritedNotifier` classes, we can efficiently manage and propagate state changes across the widget tree. The counter app updates the UI only for the widgets that depend on the changed state, ensuring optimal performance.

This approach is suitable for small to medium-scale applications where you need to manage shared state in a simple and efficient way without relying on external state management libraries. 

Feel free to modify and expand this project to suit your needs!

