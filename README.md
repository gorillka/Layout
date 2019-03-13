# Layout

Layout is a native Swift framework for simplifying to creating autolayouts from the code.

# Usage
## Instalation

Layout is provided as standalone Swift framework that you can use in your application. It works with Swift 4.2 and is not tied to any particular package management solution.

To install Layout using Carthage, add this to your Cartfile:
```
github "https://github.com/gorillka/Layout" ~> 1.1.0
```

## Integration

You can use Layout in two different cases:

- when your a view isn't on the hierarchy of views

```swift
view.addSubview(tableView) { layout in 
    layout.top...
    // ...
}

// or short version

view.addSubview(tableView) {
    $0.top...
}
```

- when your a view is on the hierarchy of views

```swift
tableView.layout { layout in
    layout.top...
}

// or short version

tableView.layout {
    $0.top...
}
```

You can use different type of conditions.

```swift
tableView.layout {
    
    // equal
    $0.top.equal(to: view.topAnchor, offsetby: 0)
    $0.top.equal(to: view.topAnchor)
    $0.top == view.topAnchor + 0
    $0.top == view.topAnchor

    // greater than or equal
    $0.leading.greaterThanOrEqual(to: view.leadingAnchor, offsetBy: 0)
    $0.leading.greaterThanOrEqual(to: view.leadingAnchor)
    $0.leading >= view.leadingAnchor + 0
    $0.leading >= view.leadingAnchor

    // less than or equal
    $0.centerX.lessThanOrEqual(to: view.centerXAnchor, offsetBy: 0)
    $0.centerX.lessThanOrEqual(to: view.centerXAnchor)
    $0.centerX <= view.centerXAnchor + 0
    $0.centerX <= view.centerXAnchor
}
```

Also, if you want to save any of constraints just use this:

```swift
class ViewController: UIViewController {
    private var tableViewTopConstraint: NSLayoutConstraint?

    // ...

    private func setViews() {
        view.addSubview(tableView) {
            tableViewTopConstraint = $0.top == view.topAnchor
        }
    }
}
```

## License

    Copyright (c) 2018 Artem Orynko

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
    