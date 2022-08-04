# Flutter Starter

Tool to help you create a new Flutter app with clean architecture and required dependencies.

**What it does**
- [x] Generate project with the latest Flutter version
- [x] Copy all files from the template into the new project
- [x] Ask if you need a local database ([ObjectBox](https://pub.dev/packages/objectbox)) and a REST API client ([DIO](https://pub.dev/packages/dio))
- [x] Upgrade all pub dependencies

## Requirements

You need to have [Python 3](https://www.python.org/downloads/) installed for the script to run, as well as [Flutter](https://docs.flutter.dev/get-started/install) to create your new application. Make sure both of these available in your $PATH.

No need to have the latest Flutter version, as the script will run `flutter upgrade` at the beginning.

## Usage
Simply run `python3 <path/to/repo/>create_flutter_app.py` in the folder in which you wish to create your project. The script will ask you for all the required informations and generate the project.
