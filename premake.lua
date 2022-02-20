project "fmt"
	kind "StaticLib"
	language "C++"
	staticruntime "off"

	targetdir ("build/bin/%{prj.name}")
	objdir ("build/obj/%{prj.name}")



  includedirs {
    "include/"
  }


	filter "system:linux"
		cppdialect "C++2a"
		systemversion "latest"
    files {
      "src/format.cc",
    }


	filter "system:windows"
		cppdialect "C++20"
		systemversion "latest"
    compileas "Module"
    files {
      "src/fmt.cc",
	 "src/os.cc",
	 "src/format.cc",
    }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"