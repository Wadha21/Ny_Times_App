# NY Times Most Popular Articles App
## Overview
The NY Times Most Popular Articles App is a Flutter application that interacts with the NY Times Most Popular Articles API to fetch and display a list of articles. The app follows a master/detail app pattern, allowing users to view article details by tapping on the list items.

## Key Features
Fetches and displays a list of most viewed articles from the NY Times API.
Implements a master/detail app pattern, allowing users to view article details by tapping on the list items.
Displays article metadata such as title, abstract, byline, published date, and thumbnail image (if available).
Provides the ability to read the full article by opening the URL in a web browser.

## Getting Started
To set up and run the app locally, please follow the steps below:

1. Clone this repository to your local machine.
2. Ensure that you have Flutter and Dart SDK installed. If not, refer to the official Flutter documentation for instructions on setting up Flutter.
3. Obtain an API key from NY Times by creating an account on the NY Times Developer Portal.
4. Replace the sample-key in the API endpoint mentioned above with your actual API key. Update the API endpoint in the app code accordingly.
5. Open the project in your preferred Integrated Development Environment (IDE), such as Android Studio or Visual Studio Code.
6. Run the command flutter pub get to fetch the dependencies specified in the pubspec.yaml file.
7. Connect a physical device or start an emulator/simulator.
8. Run the app using the command flutter run.
## Dependencies
This app utilizes the following third-party libraries:
dio: ^5.4.0 for making API requests.
flutter_bloc: ^8.1.3 for state management using the BLoC (Business Logic Component) architecture.
get_it: ^7.6.4 for dependency injection.
url_launcher: ^6.2.2 for opening the article URL in a web browser.
Make sure these dependencies are included in your pubspec.yaml file. Run flutter pub get to fetch the required packages.

