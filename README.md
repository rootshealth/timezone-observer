# Timezone change observer

## About
A flutter plugin to observe timezone changes for Android and IOS.

## Settings

### Android
- minSdkVersion: 24

- targetSdkVersion: 31

Your AndroidManifest.xml file should look like this:

```
  <application
	           ...
                <receiver
                  android:name="com.helloinside.timezone_change_observer.TimezoneChangeObserverPlugin"
                  android:exported="true">
                  <intent-filter>
                      <action android:name="android.intent.action.TIMEZONE_CHANGED" />
                  </intent-filter>
              </receiver>
        <activity
		         ...

```
