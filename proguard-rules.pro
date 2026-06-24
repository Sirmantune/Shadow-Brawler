# ProGuard rules for Shadow Brawler
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable

# Keep all public classes
-keep public class * {
    public *;
}

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep custom application classes
-keep class com.shadowbrawler.** { *; }

# Remove logging in release builds
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
}
