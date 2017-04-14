newoption { trigger = "to", value = "path", description = "Set the output location for the generated files" }

workspace "09_min"
    configurations { "Debug" }
    location(_OPTIONS["to"])
    -- flags { "C++14" }
    characterset "Unicode"

project "09_min"
    kind "ConsoleApp"
    files { "**.cpp" }
