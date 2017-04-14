workspace "08_min"
    configurations { "Debug", "Release" }
    platforms { "x32", "x64" }
    location "build"

   filter "configurations:Debug"
        defines { "_DEBUG" }
        optimize "Off"
        flags { "Symbols" }
   filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"

   filter "platforms:x32"
        architecture "x86"
   filter "platforms:x64"
        architecture "x86_64"

project "08_cpp"
    kind "ConsoleApp"
    language "C++"
    files { "**.cpp" }

project "08_csharp"
    kind "ConsoleApp"
    language "C#"
    files { "**.cs" }

project "08_d"
    kind "ConsoleApp"
    language "D"
    files { "**.d" }
