// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get splashScreenMessage => 'Welcome to Clean Tasks';

  @override
  String get searchPlaceholder => 'Search tasks...';

  @override
  String get createFormTitle => 'Create new Task ';

  @override
  String get statusLabel => 'Status';

  @override
  String get titleLabel => 'Title';

  @override
  String get titleLabelEmptyError => 'Please enter title';

  @override
  String get descriptionLabel => 'Description';

  @override
  String get descriptionEmptyError => 'Please enter description';

  @override
  String get priorityLabel => 'Priority';

  @override
  String get priorityEmptyError => 'Please select a priority';

  @override
  String get saveButton => 'Save';

  @override
  String get toastsTaskUpdated => 'Task has been updated';

  @override
  String get toastsTaskDeleted => 'Task has been deleted';

  @override
  String get toastsTaskCreated => 'Task has been created';

  @override
  String get toastsWelcomeMessage => 'Welcome to Clean Tasks!';
}
