gcc webview.cc -c -O -DWEBVIEW_COCOA=1 -DOBJC_OLD_DISPATCH_PROTOTYPES=1 -std=c++11 -o webview.o
ar rcs webview.a webview.o
# rm webview.o
mv webview.a ../../lib/macos-x64/
echo "Built webview.a for macOS & moved to /ext/lib"