plugins {
    id("java")
    id("war")
}

group = "mx.edu.itson"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    compileOnly("jakarta.platform:jakarta.jakartaee-web-api:10.0.0")

    testImplementation(platform("org.junit:junit-bom:6.0.0"))
    testImplementation("org.junit.jupiter:junit-jupiter")
    testRuntimeOnly("org.junit.platform:junit-platform-launcher")
}

tasks.test {
    useJUnitPlatform()
}
