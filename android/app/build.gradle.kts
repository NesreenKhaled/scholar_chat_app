plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    // END: FlutterFire Configuration
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.scholar_chat_app"
    compileSdk = 34         // رقم ثابت

    ndkVersion = "27.0.12077973"   // تحديث NDK للنسخة المطلوبة من Firebase

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.scholar_chat_app"
        minSdk = 23         // رقم ثابت ≥ المتطلب الأدنى من firebase_auth
        targetSdk = 33      // رقم ثابت
        versionCode = 1
        versionName = "1.0"
    }

    buildTypes {
        release {
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
