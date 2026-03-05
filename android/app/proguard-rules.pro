# Keep Flutter embedding
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.plugins.** { *; }

# Keep Google Play Core splitcompat classes
-keep class com.google.android.play.core.splitcompat.** { *; }

# Keep Google Play Core splitinstall classes
-keep class com.google.android.play.core.splitinstall.** { *; }

# Keep Google Play Core tasks
-keep class com.google.android.play.core.tasks.** { *; }

# Suppress warnings (optional, but safe)
-dontwarn com.google.android.play.core.splitcompat.SplitCompatApplication
-dontwarn com.google.android.play.core.splitinstall.**
-dontwarn com.google.android.play.core.tasks.**

# Keep your app’s main activity
-keep class com.mysourcenetwork.msn { *; }
