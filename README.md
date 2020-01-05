# Flutter Localisation
**flutter_localisation**

A small flutter test project to try out language handling and translations.

Run the following commands to create all the required generated files. The output folder needs to already exist.

# Create lib/i10n/intl_messages.arb

```
flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n/source lib/localizations.dart
```

This will create the file "intl_messages.arb". Copy this and replace "messages" in the filename with de/en (the supported languages), then run the following command:

# Create messages files

```
flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n/messages lib/localizations.dart lib/l10n/source/intl_en.arb lib/l10n/source/intl_de.arb
```

# Test translations load

Go in to the emulator phone settings and change the input language to german. Switch back to the app and it will update with the correct language. 
