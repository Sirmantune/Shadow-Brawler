plugins {
    id("com.android.application") version "8.1.0" apply false
    id("kotlin-android") apply false
}

tasks.register("clean", Delete::class) {
    delete(rootProject.buildDir)
}
