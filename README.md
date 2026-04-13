# Clean Todo

![Flutter](https://img.shields.io/badge/Flutter-v3.11.1-blue?logo=flutter)

Clean Todo is a Flutter project designed for learning and practicing the Clean Architecture principles. This project serves as a practical example for developers who want to understand how to structure their Flutter applications in a scalable and maintainable way.

## Features

- **Todo Management**: Add, edit, and delete tasks.
- **Clean Architecture**: Separation of concerns with clear layers.
- **State Management**: Using `flutter_bloc` for predictable state management.
- **Dependency Injection**: Powered by `get_it` and `injectable`.
- **Database Integration**: Local storage with `drift` and `sqlite3_flutter_libs`.
- **Functional Programming**: Leveraging `fpdart` for functional paradigms.
- **Custom Themes**: Beautiful UI with `google_fonts`.

## Libraries Used

### Dependencies

- [flutter](https://flutter.dev): The core framework.
- [cupertino_icons](https://pub.dev/packages/cupertino_icons): iOS-style icons.
- [get_it](https://pub.dev/packages/get_it): Dependency injection.
- [injectable](https://pub.dev/packages/injectable): Code generation for dependency injection.
- [fpdart](https://pub.dev/packages/fpdart): Functional programming utilities.
- [freezed_annotation](https://pub.dev/packages/freezed_annotation): Code generation for immutable classes.
- [json_annotation](https://pub.dev/packages/json_annotation): JSON serialization annotations.
- [flutter_bloc](https://pub.dev/packages/flutter_bloc): State management.
- [path_provider](https://pub.dev/packages/path_provider): File system paths.
- [drift](https://pub.dev/packages/drift): Local database.
- [sqlite3_flutter_libs](https://pub.dev/packages/sqlite3_flutter_libs): SQLite support.
- [path](https://pub.dev/packages/path): Path manipulation.
- [google_fonts](https://pub.dev/packages/google_fonts): Custom fonts.

### Dev Dependencies

- [flutter_test](https://pub.dev/packages/flutter_test): Testing utilities.
- [flutter_lints](https://pub.dev/packages/flutter_lints): Recommended lint rules.
- [freezed](https://pub.dev/packages/freezed): Code generation for immutable classes.
- [build_runner](https://pub.dev/packages/build_runner): Code generation tool.
- [injectable_generator](https://pub.dev/packages/injectable_generator): Code generation for dependency injection.
- [json_serializable](https://pub.dev/packages/json_serializable): JSON serialization.
- [drift_dev](https://pub.dev/packages/drift_dev): Code generation for Drift.
- [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons): Launcher icon generator.

## Getting Started

1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```bash
   cd clean_todo
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the build runner to generate necessary files:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```
5. Run the app:
   ```bash
   flutter run
   ```

## Learning Goals

- Understand the Clean Architecture principles.
- Learn how to use `flutter_bloc` for state management.
- Practice dependency injection with `get_it` and `injectable`.
- Explore database integration with `drift`.
- Apply functional programming concepts with `fpdart`.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

This project is licensed under the MIT License.
