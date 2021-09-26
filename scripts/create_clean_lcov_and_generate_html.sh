#!/bin/bash
set -e
flutter pub get
sh scripts/import_files_coverage.sh lcov_test
flutter test --coverage
lcov --remove coverage/lcov.info \
'lib/main.dart' \
'lib/*/*.g.dart' \
'lib/features/*/presentation/pages/*.dart' \
'lib/features/*/presentation/widgets/*.dart' \
-o coverage/lcov.info
if [ -n "$1" ]
then
    if [ "$1" = true ]
    then
        genhtml coverage/lcov.info -o coverage
        open coverage/index.html
    fi
fi