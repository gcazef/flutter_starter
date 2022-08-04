# Flutter Starter

Tool to help you create a new Flutter app with clean architecture and required dependencies.

**What it does**
- [x] Generate project with the latest Flutter version
- [x] Copy all files from the template into the new project
- [x] Upgrade all pub dependencies

## Requirements

You need to have [Python 3](https://www.python.org/downloads/) installed for the script to run, as well as [Flutter](https://docs.flutter.dev/get-started/install) to create your new application. Make sure both of these available in your $PATH.

No need to have the latest Flutter version, as the script will run `flutter upgrade` at the beginning.

## Usage
Simply run `python3 <path/to/repo/>create_flutter_app.py` in the folder in which you wish to create your project. The script will ask you for all the required informations and generate the project.

### Manual changes
Right now, this script does not automate all steps needed to make your project work immediately. Here are some things you will need to do.

**Package name**
Using your IDE, make a global search for `package:template`. Replace all occurencies with `package:<your_project_name>`.

**Code generation**
For the code generation to occur when you run the app (needed for internationalization), you have to add a line to your `pubspec.yaml`. Open this file, then locate the line `uses-material-design: true`. You can add `generate: true` right under this.

**Other dependencies**
Still in `pubspec.yaml`, add this to the dependencies list:
```
flutter_localizations:
    sdk: flutter
```
