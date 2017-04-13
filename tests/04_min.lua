workspace "04_min"
    configurations { "Debug" }
    location "build"

    project "04_min"
        kind "ConsoleApp"
        location "%{wks.location}/prjbuild"
        files { "**.cpp" }
