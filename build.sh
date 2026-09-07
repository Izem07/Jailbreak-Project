#!/usr/bin/env bash

# Define package folder and output deb file name
PKG_DIR="MyThemeRootless"
OUTPUT_DEB="com.z.darkthemeaddon_1.0.0_iphoneos-arm64.deb"

echo "==> Setting permissions..."
chmod -R 0755 "$PKG_DIR/DEBIAN"
chmod 0755 "$PKG_DIR/DEBIAN/postinst"
chmod -R 0755 "$PKG_DIR/var"

echo "==> Cleaning macOS metadata files..."
find "$PKG_DIR" -name ".DS_Store" -type f -delete

echo "==> Building debian package..."
dpkg-deb -b -Zxz "$PKG_DIR" "$OUTPUT_DEB"

if [ $? -eq 0 ]; then
    echo "==> Successfully created $OUTPUT_DEB"
else
    echo "==> Failed to build package."
    exit 1
fi
