# EGFloatingTextField
[![Version](https://img.shields.io/cocoapods/v/EGFloatingTextField.svg?style=flat)](http://cocoapods.org/pods/EGFloatingTextField)
[![License](https://img.shields.io/cocoapods/l/EGFloatingTextField.svg?style=flat)](http://cocoapods.org/pods/EGFloatingTextField)
[![Platform](https://img.shields.io/cocoapods/p/EGFloatingTextField.svg?style=flat)](http://cocoapods.org/pods/EGFloatingTextField)

An implemantation of "Float Label Pattern" of Material Design in Swift programming language. 

![alt tag](https://raw.github.com/enisgayretli/EGFloatingTextField/master/EGFloatingTextField.gif)

## Usage

EGFloatingTextField is available as [CocoaPods](http://cocoapods.org). To install
it, simply add the following lines to your Podfile:

```ruby
use_frameworks!
pod "EGFloatingTextField"
```

## Setup
**Import dependency**
```
import PureLayout
```
**Initialize the textfield and add it as a subview**
```
let emailLabel = EGFloatingTextField(frame: CGRectMake(8, 64, CGRectGetWidth(self.view.bounds) - 16, 48))
```
```
// set as floatinglabel
emailLabel.floatingLabel = true
```
```
// set the placeholder
emailLabel.setPlaceHolder("Email")
```
```
// set the validation type there are two options at the moment, Email and Number.
emailLabel.validationType = .Email
```
```
// add as subview
self.view.addSubview(emailLabel)
```
**Create custom validator for textfield**

Add new case for EGFloatingTextFieldValidationType enum
```
enum EGFloatingTextFieldValidationType {

    case Email
    case Number
    case X
}
```
Create validation block for validationtype
```
private var xValidationBlock : EGFloatingTextFieldValidationBlock
```

Implement the validation block in commitInit Method
```
func commonInit(){

        self.xValidationBlock = ({(text:String, inout message: String) -> Bool in
            ....
        })
        .....
}
```

## Author

Enis Gayretli, enisgayretli@gmail.com

## License

EGFloatingTextField is available under the MIT license. See the LICENSE file for more info.
