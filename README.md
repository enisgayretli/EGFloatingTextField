# EGFloatingTextField

An implemantation of "Float Label Pattern" of Material Design in Swift programming language. 

![alt tag](https://raw.github.com/enisgayretli/EGFloatingTextField/master/EGFloatingTextField.gif)

## Using this in your project
```
Add vendors, PureLayout at  "https://github.com/smileyborg/PureLayout" and UIKit+Material at "https://github.com/nklizhe/UIKit-Material".
```
```
Add EGFloatingTextField.swift into your project.
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

# License
MIT License









