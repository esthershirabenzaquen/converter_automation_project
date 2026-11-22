# 📱 Converter Automation Project

> An end-to-end **mobile test automation** project for the [Ultimate Unit Converter](https://play.google.com/store/apps/details?id=com.physphil.android.unitconverterultimate) Android application, built with **Appium**, **Cucumber (BDD)**, and **Ruby**.

---

## 🎯 Project Purpose

This project automates functional testing of the **Ultimate Unit Converter** Android app.  
It validates core user flows — such as swapping measurement units — using a **Behavior-Driven Development (BDD)** approach that makes tests readable by both technical and non-technical stakeholders.

**Problem Solved:**  
Manual testing of a unit converter is repetitive and error-prone. This framework enables fast, reliable, and repeatable automated regression testing on a real Android device or emulator.

---

## 🧰 Tech Stack

| Tool / Technology | Version / Notes |
|-------------------|-----------------|
| **Language**      | Ruby            |
| **Test Framework**| Cucumber (BDD)  |
| **Mobile Driver** | Appium          |
| **Platform**      | Android         |
| **App Under Test**| Ultimate Unit Converter APK |
| **Element Locator** | Resource ID   |

---

## 📁 Project Structure

```
converter_automation_project/
└── converter_automation/
    └── features/
        ├── step_definitions/
        │   ├── first_steps.rb         # Step implementations (Ruby + Appium)
        │   └── first_tests.feature    # BDD scenarios written in Gherkin
        └── support/
            ├── env.rb                 # Appium driver configuration & capabilities
            ├── hooks.rb               # Before/After test lifecycle hooks
            └── ultimate_converter.apk # Android application under test
```

### File Descriptions

| File | Role |
|------|------|
| `first_tests.feature` | Defines test scenarios in **Gherkin** (Given/When/Then). Business-readable test cases. |
| `first_steps.rb` | Implements each Gherkin step in **Ruby** using Appium element interactions. |
| `env.rb` | Configures the **Appium Driver** with device capabilities (device name, platform, APK path, app package/activity). |
| `hooks.rb` | **Before** hook starts the driver before each test; **After** hook quits the driver after each test, ensuring test isolation. |
| `ultimate_converter.apk` | The **Android application binary** being tested — bundled within the repo for portability. |

---

## ⚙️ Prerequisites

Before running the tests, ensure the following are installed:

1. **Ruby** (≥ 2.7) — [ruby-lang.org](https://www.ruby-lang.org/)
2. **Bundler** gem:
   ```bash
   gem install bundler
   ```
3. **Appium** (≥ 1.22) — [appium.io](https://appium.io/)
   ```bash
   npm install -g appium
   appium driver install uiautomator2
   ```
4. **Android SDK** with `adb` configured and available in `PATH`
5. A running **Android Emulator** or a connected physical Android device

---

## 🚀 Installation & Usage

### 1. Clone the repository
```bash
git clone https://github.com/esthershirabenzaquen/converter_automation_project.git
cd converter_automation_project/converter_automation
```

### 2. Install Ruby dependencies
```bash
gem install cucumber appium_lib
```
> If a `Gemfile` is present, run `bundle install` instead.

### 3. Configure your device

Edit `features/support/env.rb` and update `deviceName` to match your device/emulator:
```ruby
deviceName: "emulator-5554",   # replace with your device name (adb devices)
```

### 4. Start the Appium server
```bash
appium
```

### 5. Run the tests
```bash
cucumber features/step_definitions/first_tests.feature
```

To run only scenarios tagged `@wip`:
```bash
cucumber --tags @wip
```

---

## 🧪 Test Scenarios

### Feature: User is able to convert area units

#### ✅ Scenario: User is able to swap values

| Step | Description |
|------|-------------|
| `Given I click on Got it button` | Dismisses the welcome/onboarding dialog |
| `And I see "Sq Kilometre" in Form header` | Verifies the default "From" unit is **Sq Kilometre** |
| `And I see "Sq Metre" in To header` | Verifies the default "To" unit is **Sq Metre** |
| `When I click on Swap it button` | Taps the swap FAB button |
| `Then I see "Sq Metre" in Form header` | Verifies "From" is now **Sq Metre** after swap |
| `And I see "Sq Kilometre" in To header` | Verifies "To" is now **Sq Kilometre** after swap |

**Expected Result:** After tapping Swap, the "From" and "To" unit fields exchange their values correctly.

---

## 📊 Sample Test Output

When running `cucumber`, the expected console output looks like:

```
Feature: User is able to convert area units

  @wip
  Scenario: User is able to swap values           # features/step_definitions/first_tests.feature:3
    Given I click on Got it button                # features/step_definitions/first_steps.rb:1
      Click on Got it button
    And I see "Sq Kilometre" in Form header       # features/step_definitions/first_steps.rb:6
    And I see "Sq Metre" in To header             # features/step_definitions/first_steps.rb:13
    When I click on Swap it button                # features/step_definitions/first_steps.rb:20
    Then I see "Sq Metre" in Form header          # features/step_definitions/first_steps.rb:6
    And I see "Sq Kilometre" in To header         # features/step_definitions/first_steps.rb:13

1 scenario (1 passed)
6 steps (6 passed)
0m12.345s
```

---

## 🔑 Key Automation Concepts Demonstrated

- **BDD (Behavior-Driven Development)** — Gherkin scenarios bridge business and engineering.
- **Appium Mobile Automation** — Cross-platform mobile testing using WebDriver protocol.
- **Test Hooks** — `Before`/`After` hooks maintain clean driver state per test.
- **Parameterized Steps** — Regex capture groups make steps reusable across scenarios.
- **Resource ID Locators** — Stable and reliable element identification strategy.
- **APK Deployment** — App is installed automatically before each test run.

---

## 🤝 Author

**Esther Shiraben-Zaquen**  
QA Automation Engineer  
[GitHub Profile](https://github.com/esthershirabenzaquen)

---

## 📄 License

This project is intended for educational and portfolio purposes.
