# Google Maps SDK SPM
-  [구글맵 SDK](https://github.com/googlemaps/maps-sdk-for-ios-samples)를 SPM으로 사용하기 위한 Repository 입니다.

## Installation
```swift
.package(url: "https://github.com/good-potatos/GPGoogleMaps-SPM.git", .upToNextMinor(from: "8.0.0"))
```

## Known Issue
- Edit Scheme > Build > Post-actions에 아래와 같은 스트립트를 넣어야 정상 동작합니다.

```
rm -rf ${TARGET_BUILD_DIR}/${TARGET_NAME}.app/Frameworks/*.framework
```

