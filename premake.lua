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

	compileas "Module"


	filter "system:linux"
		cppdialect "C++2a"
		systemversion "latest"


	filter "system:windows"
		cppdialect "C++20"
		systemversion "latest"
		defines {
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"