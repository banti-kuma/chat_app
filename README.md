# 💬 Flutter Chat App with Firebase & GetX

A real-time **chat application** built using **Flutter**, **Firebase**, and **GetX** for state management. This app supports real-time messaging, user authentication, and image sharing with a clean and responsive UI.

---

## 🚀 Features

- 🔐 Firebase Authentication (Email/Password or Google Sign-In)
- 💬 Real-time messaging using Cloud Firestore
- 📸 Send and receive images via Firebase Storage
- 🔄 State management with GetX
- 🧠 Reactive UI updates
- 📱 Responsive for Android, iOS, and Web
- 🕓 Timestamped messages
- 📤 Push notifications (optional with FCM)

---

## 🛠️ Tech Stack

- **Frontend:** Flutter (Dart)
- **State Management:** GetX
- **Backend:** Firebase (Auth, Firestore, Storage)
- **Design:** Material Design
- **Platform Support:** Android, iOS, Web

---

## 📦 Installation & Setup

### 🔧 Prerequisites

- Flutter SDK (latest)
- Firebase account
- Code editor (e.g., VSCode or Android Studio)

### 📥 Clone the Repository

```bash
git clone https://github.com/banti-kuma/chat_app.git
cd chat_app
📦 Install Dependencies
bash
Copy
Edit
flutter pub get
🔥 Firebase Setup
1. Firebase Project
Go to Firebase Console

Create a new project

2. Add Firebase to your App
✅ Android
Add Android app in Firebase

Download google-services.json

Place it in android/app/

🍏 iOS
Add iOS app in Firebase

Download GoogleService-Info.plist

Place it in ios/Runner/

🌐 Web (Optional)
Register Web app in Firebase

Copy Firebase config snippet

Initialize Firebase in web/index.html

3. Enable Services
Authentication → Enable Email/Password or Google Sign-In

Firestore Database → Create database in test mode

Firebase Storage → Enable for image upload

🔧 Firebase Configuration Files
Use flutterfire configure (requires Firebase CLI):

bash
Copy
Edit
dart pub global activate flutterfire_cli
flutterfire configure
▶️ Run the App
bash
Copy
Edit
flutter run
🧠 State Management with GetX
Reactive Controller classes to manage chat logic

Instant UI updates on new messages

Easy routing using Get.to()

📁 Project Structure
bash
Copy
Edit
lib/
├── main.dart
├── app/
│   ├── routes/
│   │   └── app_pages.dart
│   ├── controllers/
│   │   ├── auth_controller.dart
│   │   └── chat_controller.dart
│   ├── models/
│   │   └── message_model.dart
│   ├── screens/
│   │   ├── login_screen.dart
│   │   └── chat_screen.dart
│   ├── bindings/
│   │   └── initial_bindings.dart
│   ├── widgets/
│   │   ├── message_bubble.dart
│   │   └── chat_input_field.dart
└── firebase_options.dart
📜 Example Firebase Firestore Rules

rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /messages/{messageId} {
      allow read, write: if request.auth != null;
    }
  }
}
