## Screenshots

<p align="middle">
  <img src="https://raw.githubusercontent.com/duonghominhhuy/swift-multi-language/master/Screenshots/Screenshot_1.png" width="200" />
  <img src="https://raw.githubusercontent.com/duonghominhhuy/swift-multi-language/master/Screenshots/Screenshot_2.png" width="200" /> 
  <img src="https://raw.githubusercontent.com/duonghominhhuy/swift-multi-language/master/Screenshots/Screenshot_3.png" width="200" />
  <img src="https://raw.githubusercontent.com/duonghominhhuy/swift-multi-language/master/Screenshots/Screenshot_4.png" width="200" />
</p>

## Features

- Swift programming language support.
- Changing application language programmatically.

## Requirements

- Xcode 11 or above.
- iOS 13 or above.

## Code

```swift
let languageCode = "en"
LocalizationUtils.sharedInstance.setLanguage(languageCode: languageCode)
titleLabelText = LocalizationUtils.sharedInstance.localizedStringForKey(key: "days_of_week", comment: "")
pickerLabelText = LocalizationUtils.sharedInstance.localizedStringForKey(key: "select_language", comment: "")
daysText = LocalizationUtils.sharedInstance.localizedDays()
```

## Find me on:

- Twitter [@duonghominhhuy](https://twitter.com/duonghominhhuy)

## License

kotlin-multi-language is distributed under the MIT license. See [LICENSE](https://github.com/duonghominhhuy/swift-multi-language/blob/master/LICENSE) for details.
