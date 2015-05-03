solution "Libgit2"
	configurations { "Debug" }
	location ("build")

project "libgit2"
	targetname "libgit2"
	language "C"
	kind "StaticLib"
	location ("build/projects")

	files
	{
		"**.c", "**.h"
	}

	configuration "Debug"
		targetdir "build/bin/debug"
		defines { "_DEBUG", "WIN32" }
