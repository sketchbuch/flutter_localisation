# Create lib/i10n/intl_messages.arb

flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n/source lib/localizations.dart

# Create messages files

flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n/messages lib/localizations.dart lib/l10n/source/intl_en.arb lib/l10n/source/intl_de.arb

