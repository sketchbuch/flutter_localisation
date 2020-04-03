# Flutter Localisation

**flutter_localisation**

![alt text](https://raw.githubusercontent.com/sketchbuch/flutter_localisation/master/docs/images/preview.gif 'Flutter Localisation')

A small flutter test project to try out language handling and translations.

Run the following commands to create all the required generated files. The output folder needs to already exist.

# Create .arb files

```
flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n/app/source lib/l10n/app/localizations.dart
```

This will create the file "intl_messages.arb". Copy this and replace "messages" in the filename with de/en (the supported languages), then run the following command:

# Create message files

```
flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n/app/messages lib/l10n/app/localizations.dart lib/l10n/app/source/intl_en.arb lib/l10n/app/source/intl_de.arb
```

# Test translations load

Go in to the emulator phone settings and change the input language to german. Switch back to the app and it will update with the correct language.

# Structure

There subfolder "app" in the l10n folder is there to seperate translations. In a big app it would be difficult to have all translations in one file, so I use the subfolders like namespaces. This way different sections of an app can have their own translation files. You could copy the whole app folder and call it "errors" for example to keep all error messages separate in one file.

Each "namespace" can have it's own translations and a delegate that must be added in main.dart. 
