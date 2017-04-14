workspace "06_min"
    configurations { "Debug", "Release" }
    location "build"

   filter "configurations:Debug"
        defines { "_DEBUG" }
        optimize "Off"
        symbols "On"

   filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"
        symbols "Off"

project "06_min"
    kind "ConsoleApp"
    files { "**.cpp" }
