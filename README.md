# Godot iOS Plugin template

This repo contains a *starter* Xcode and SCons configuration to build Godot plugin for iOS.
Xcode project and Scons configuration allows to build static `.a` library, that could be used with `.gdip` file as Godot's plugin to include platform functionality into exported application.
iOS plugin can be used in Godot after specific changes made into engine source ([#41230](https://github.com/godotengine/godot/pull/41230) PR for Godot's `master` branch).

# Initial setup

## Getting Godot engine headers

To build iOS plugin library it's required to have Godot's header files including generated ones. So running `scons platform=iphone target=<release|debug>` in `godot` submodule folder is required.

# Working with Xcode

Building project should be enough to build a `.a` library that could be used with `.gdip` file.

# Working with SCons

Running `scons platform=ios arch=<arch> target=<release|debug> target_name=<library_name>` would result in plugin library for specific platform.
Compiling for multiple archs and using `lipo -create .. -output ..` might be required for release builds.
