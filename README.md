# Layout

Layout is a native Swift framework for simplifying to creating autolayouts from the code.

# Usage
## Instalation

Layout is provided as standalone Swift framework that you can use in your application. It works with Swift 4.2 and is not tied to any particular package management solution.

To install Layout using Carthage, add this to your Cartfile:
```
github "https://github.com/gorillka/Layout" ~> 1.0.1
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
