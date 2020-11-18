import 'dart:io';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:parq/keys.dart';
import 'package:test/test.dart';

void main() {
  group('PAR-Q App', () {
    FlutterDriver driver;

    setUpAll(() async {
      Directory('screenshots').create();
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    Future<void> delay([int milliseconds = 250]) async {
      await Future<void>.delayed(Duration(milliseconds: milliseconds));
    }

    Future<void> tapButton(String buttonKey) async {
      final button = find.byValueKey(buttonKey);
      await driver.waitFor(button);
      await delay();
      await driver.tap(button);
    }

    takeScreenshot(FlutterDriver driver, String name) async {
      final List<int> pixels = await driver.screenshot();
      final File file = new File('screenshots/$name.png');
      await file.writeAsBytes(pixels);
      print(name);
    }

    test('check flutter driver health', () async {
      final health = await driver.checkHealth();
      expect(health.status, HealthStatus.ok);
    });

    void launchTest({String locale: 'en'}) {
      test('test whole app', () async {
        await driver.runUnsynchronized(() async {
          await tapButton(Keys.languageDropdownButton);
          await tapButton(locale);
          await takeScreenshot(driver, '$locale-welcomeScreen');
          await tapButton(Keys.welcomePageButton);
        });
        await tapButton(Keys.ghqIntroButton);
        await takeScreenshot(driver, '$locale-firstQuestionScreen');
        for (int i = 0; i < 7; i++) {
          await tapButton(Keys.ghqNoButton);
        }
        await tapButton(Keys.ghqSummaryButton);
        await takeScreenshot(driver, '$locale-clearanceScreen');
        await tapButton(Keys.finalScreenResetButton);

        //
        await driver.runUnsynchronized(() async {
          await tapButton(Keys.welcomePageButton);
        });
        await tapButton(Keys.ghqIntroButton);
        for (int i = 0; i < 7; i++) {
          await tapButton(Keys.ghqYesButton);
        }
        await tapButton(Keys.ghqSummaryButton);
        await tapButton(Keys.ghqFollowUpButton);
        for (int i = 0; i < 9; i++) {
          await tapButton(Keys.fuqNoButton);
        }
        await tapButton(Keys.fuqYesButton);
        await tapButton(Keys.fuqYesButton);
        await tapButton(Keys.finalScreenResetButton);
      });
    }

    launchTest(locale: 'en');
    launchTest(locale: 'fr');
  });
}
