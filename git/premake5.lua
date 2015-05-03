solution "Git"
	configurations { "Release", "Debug" }
	location ("build/projects")

project "git"
	targetname "git"
	language "C"
	kind "ConsoleApp"
	flags { "No64BitChecks", "ExtraWarnings", "StaticRuntime" }
	includedirs { ".", "compat", "compat/regex", "compat/vcbuild/include", "compat/win32" }
	
	files
	{
		"**.c", "**.h", "Makefile",
		"**.in", "**.m4",
		"**.perl", "**.sh"
	}
	excludes
	{
		"build/**.*"
	}
	
	vpaths
	{
		["Source/*"] = "**.c",
		["Headers/*"] = "**.h",
		["Reference/Makefiles/*"] = { "Makefile", "**.in", "**.m4" },
		["Reference/Perl/*"] = "**.perl",
		["Reference/Shell/*"] = "**.sh",
		["Reference/Notes/*"] = "**.txt"
	}
	
	configuration "Debug"
		targetdir "build/bin/debug"
		defines { "_DEBUG", "WIN32" }
		flags { "Symbols" }
	
	configuration "Release"
		targetdir "build/bin/release"
		defines { "NDEBUG", "WIN32" }
		flags { "OptimizeSize" }

	configuration "vs*"
		defines     { "_CRT_SECURE_NO_WARNINGS" }

	configuration "vs2005"
		defines	{"_CRT_SECURE_NO_DEPRECATE" }

	configuration "windows"
		links { "ole32" }

if _ACTION == "clean" then
	os.rmdir("bin")
	os.rmdir("build")
end
