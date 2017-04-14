workspace "07_min"
    configurations { "Debug", "Release" }
    platforms { "x32", "x64" }
    location "build"

   filter "configurations:Debug"
        defines { "_DEBUG" }
        optimize "Off"
        --symbols "On"
        flags { "Symbols" }

   filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
        --symbols "Off"

   filter "platforms:x32"
        architecture "x86"

   filter "platforms:x64"
        architecture "x86_64"

project "07_min"
    kind "ConsoleApp"
    files { "**.cpp" }
