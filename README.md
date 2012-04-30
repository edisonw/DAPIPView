## DAPIPView

DAPIPView is a UIView subclass to provide picture-in-picture functionality.
It was built to be an imitation of that of the FaceTime app in iOS.

It will automatically snap to the nearest corner.

View the included example project for a demonstration.

## Installation

To use DAPIPView:

1 - Copy over the `DAPIPView` folder to your project folder (including the "Frame Images").
2 - Allocate, Initialize.
3 - For FaceTime-like non-rotation, add to UIWindow, not a subview
Optional - Customize.

Initializing DAPIPView with -init will create a view with the same bounds that FaceTime uses. Use -initWithFrame: if you would like to choose the view bounds, or customize after initialization using -setFrame: or -setBounds:.

## Usage
Wherever you want to use DAPIPView, import the appropriate header file and initialize as follows:

```
' #import "DAPIPView.h" '
```

Initialize either via code or Interface Builder.
The view will automatically move to the bottom right corner.

## Notes
The movement physics are not yet the same as FaceTime's (momentum).

### Automatic Reference Counting (ARC) support
DAPIPView was made with ARC enabled by default.

## Contact

- [Personal website](http://www.amitay.us)
- [GitHub](http://github.com/danielamitay)
- [Twitter](http://twitter.com/danielamitay)
- [LinkedIn](http://www.linkedin.com/in/danielamitay)
- [Hacker News](http://news.ycombinator.com/user?id=danielamitay)
- [Email](daniel@amitay.us)

If you use/enjoy DAPIPView, let me know!

## License

### MIT License

Copyright (c) 2012 Daniel Amitay (http://www.amitay.us)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
