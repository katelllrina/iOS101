Access Modifiers
- open
- public
- package 
- internal
- fileprivate
- private

| Modifier      | Simple Meaning                  | Visible Where         |
| ------------- | ------------------------------- | --------------------- |
| `open`        | Fully open                      | Everywhere            |
| `public`      | Visible everywhere, but limited | Everywhere            |
| `package`     | Inside the package only         | Package               |
| `internal`    | Inside the project/app          | Module/project        |
| `fileprivate` | Inside one file only            | Current `.swift` file |
| `private`     | Inside the object/block only    | Most restricted       |





| Modifier | Visible inside app | Visible outside app | Can subclass outside module |
| -------- | ------------------ | ------------------- | --------------------------- |
| internal | yes                | no                  | no                          |
| public   | yes                | yes                 | no                          |
| open     | yes                | yes                 | yes                         |




Самые популярные imports в iOS

| Import       | Для чего             |
| ------------ | -------------------- |
| Foundation   | базовые инструменты  |
| UIKit        | старый UI framework  |
| SwiftUI      | современный UI       |
| Combine      | reactive programming |
| CoreData     | database             |
| AVFoundation | audio/video          |
| MapKit       | maps                 |
