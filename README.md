# Readme

## How to code in Swift without a Mac

Since a Mac OS VM is a pain in the ass to setup, an Ubuntu VM is far easier. Unfortunately, XCode is not available in this case, the best alternative as of now is [Visual Studio Code](https://code.visualstudio.com/download), which at least offers syntax highlighting for Swift. To access the documentation without the need of a browser, [Zeal](https://zealdocs.org/download.html#linux) is your friend. **NOTE:** It only offers documentation for the standard library, documentation for other modules such as Foundation, the [Apple API Reference](https://developer.apple.com/reference/foundation) is useful.

## Environment

Coded using Swift 3.0.2-RELEASE on Ubuntu 16.04.

```shell
$ swift --version
Swift version 3.0.2 (swift-3.0.2-RELEASE)
Target: x86_64-unknown-linux-gnu
```

## How to install

- `$ apt-get install clang`
- Download from [swift.org](https://swift.org/download/)
- Untar anywhere
- Add bin folder to path
- Check if working with `$ swift --version`

## How to build & run

### For single files

```shell
$ cat main.swift
print("Hello world!")
$ swiftc main.swift -o main
$ ./main
Hello world!
```

### For packages

#### Execute

```shell
$ cd ex02
$ swift build
Compile Swift Module 'ex02' (2 sources)
Linking ./.build/debug/ex02
$ .build/debug/ex02
```

#### Run tests

```shell
$ cd ex03
$ swift test
Test Suite 'All tests' started at 22:21:18.272
Test Suite 'debug.xctest' started at 22:21:18.273
Test Suite 'ex03Tests' started at 22:21:18.273
Test Case 'ex03Tests.testImplicitlyUnwrappedOptional' started at 22:21:18.273
Test Case 'ex03Tests.testImplicitlyUnwrappedOptional' passed (0.0 seconds).
Test Suite 'ex03Tests' passed at 22:21:18.273
         Executed 1 test, with 0 failures (0 unexpected) in 0.0 (0.0) seconds
Test Suite 'debug.xctest' passed at 22:21:18.273
         Executed 1 test, with 0 failures (0 unexpected) in 0.0 (0.0) seconds
Test Suite 'All tests' passed at 22:21:18.273
         Executed 1 test, with 0 failures (0 unexpected) in 0.0 (0.0) seconds
```

## How to create a new package

```shell
swift package init
```

See [Getting Started](https://swift.org/getting-started/#using-the-package-manager) for more details.
