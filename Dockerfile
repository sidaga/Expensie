FROM gitpod/workspace-full:latest

# Install Android SDK
RUN wget -q https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip -O android-sdk.zip && \
    unzip android-sdk.zip -d /opt/android-sdk && \
    rm android-sdk.zip

# Set environment variables
ENV ANDROID_SDK_ROOT /opt/android-sdk
ENV PATH $PATH:$ANDROID_SDK_ROOT/cmdline-tools/bin

# Accept Android SDK licenses
RUN yes | sdkmanager --licenses
