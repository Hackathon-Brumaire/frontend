.PHONY: freeze_build free_watch test coverage

freeze_build:
	flutter pub run build_runner build --delete-conflicting-outputs

watch:
	flutter pub run build_runner watch --delete-conflicting-outputs

test:
	flutter test

clean:
	flutter clean

coverage:
	flutter test --coverage && lcov --remove coverage/lcov.info "**/*.chopper.dart" "**/*.freezed.dart" "**/*.g.dart" -o coverage/lcov.info && genhtml ./coverage/lcov.info -o ./coverage/html
