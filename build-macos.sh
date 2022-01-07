echo "Deleting old webview.o"
rm webview.o
echo "Running clang-format..."
clang-format -i webview.h
echo "Building..."
# -DOBJC_OLD_DISPATCH_PROTOTYPES=1
gcc webview.cc -c -O -DWEBVIEW_COCOA=1 -std=c++11 -o webview.o
ar rcs libwebview.a webview.o
mv libwebview.a ../../lib/x86_64-apple-macosx/
echo "Built libwebview.a for macOS & moved to /ext/lib/x86_64-apple-macosx"
