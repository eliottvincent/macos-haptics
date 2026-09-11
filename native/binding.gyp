{
  "targets": [
    {
      "target_name": "macos_haptics",
      "sources": [
        "src/haptics.mm"
      ],
      "xcode_settings": {
        "CLANG_CXX_LANGUAGE_STANDARD": "c++17",
        "CLANG_ENABLE_OBJC_ARC": "YES",
        "MACOSX_DEPLOYMENT_TARGET": "10.15",
        "OTHER_LDFLAGS": [
          "-framework",
          "AppKit"
        ]
      }
    }
  ]
}
