# Dark Custom Theme

A rootless-compatible (`iphoneos-arm64`) icon theme for jailbroken iOS devices. Installs via Sileo and applies through SnowBoard.

## Requirements

- Rootless jailbreak (e.g. Dopamine)
- [Sileo](https://getsileo.app/) package manager
- [SnowBoard](https://repo.spark.sh/) theme engine

## Project Structure

```
MyThemeRootless/
├── DEBIAN/
│   └── control                          ← package metadata
└── var/jb/Library/Themes/
    └── DarkCustom.theme/
        ├── Info.plist                   ← theme configuration
        └── IconBundles/                 ← @3x icon PNGs go here
```

## Adding Icons

Drop your icon files into `MyThemeRootless/var/jb/Library/Themes/DarkCustom.theme/IconBundles/`.

Icons must be named by bundle identifier with `@3x.png` suffix, for example:

```
com.d2l.brightspace.pulse@3x.png
com.parentsquare.studentsquare.app@3x.png
com.edupoint.studentvue1@3x.png
com.stossy11.MeloNX@3x.png
com.cutcom.apparmor.oaklandcc@3x.png
```

## Building

Requires `dpkg-deb` (available on macOS via Homebrew or any Linux terminal).

```bash
chmod +x build.sh
./build.sh
```

Output: `com.custom.darktheme_1.0.0_iphoneos-arm64.deb`

## Installing

1. Transfer the `.deb` to your device
2. Open it with Sileo to install
3. Open SnowBoard → select **Dark Custom Theme** → apply
