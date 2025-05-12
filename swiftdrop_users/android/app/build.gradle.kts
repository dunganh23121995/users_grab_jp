plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "jp.madlab.swiftdrop_users"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "jp.madlab.swiftdrop_users"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
//        versionCode = flutter.versionCode
//        versionName = flutter.versionName
    }

    flavorDimensions.add("env")
    productFlavors {
        create("dev") {
            dimension = "env"
            resValue("string", "app_name", "Swift Drop DEV")
            applicationId = "jp.madlab.swiftdrop.dev"
            versionCode = 1
            versionName = "1.0.1"
        }
        create("stg") {
            dimension = "env"
            resValue("string", "app_name", "Swift Drop STG")
            applicationId = "jp.madlab.swiftdrop.stg"
            versionCode = 1
            versionName = "1.0.0"
        }
        create("prod") {
            dimension = "env"
            resValue("string", "app_name", "Swift Drop")
            applicationId = "jp.madlab.swiftdrop"
            versionCode = 1
            versionName = "1.0.0"
        }
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
