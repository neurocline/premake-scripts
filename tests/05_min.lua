workspace "05_min"
    configurations { "Debug" }
    location "build"

    project "05_min"
        kind "ConsoleApp"
        location "%{wks.location}/prjbuild"
        files { "**.cpp" }

		files { "**.txt" }
        filter 'files:**.txt'
            buildmessage 'wks.location = %{wks.location}'
            buildcommands { 'dir' }
            buildoutputs { 'output.i' }
