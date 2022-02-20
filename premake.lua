project "fmt"
	kind "StaticLib"
	language "C++"
	staticruntime "off"

	targetdir ("build/bin/%{prj.name}")
	objdir ("build/obj/%{prj.name}")

	files {
		"src/fmt.cc",
    "src/format.cc",
    "src/os.cc"
	}

  includedirs {
    "include/"
  }


	--filter "system:linux"


	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"