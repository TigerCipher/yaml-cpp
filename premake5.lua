project "yaml-cpp"
    kind "StaticLib"
    language "C++"


    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("obj/" .. outputdir .. "/%{prj.name}")


    files
    {
        "src/**.h",
        "src/**.cpp",

        "include/**.h"
    }

    includedirs
    {
        "include"
    }

    defines
    {
        "YAML_CPP_STATIC_DEFINE"
    }

    cppdialect "C++17"
    staticruntime "On"
    systemversion "latest"

    filter "system:linux"
        pic "On"

	filter "configurations:Debug"
		symbols "On"
		runtime "Debug"

	filter "configurations:Release"
		defines "RB_RELEASE"
		optimize "On"
		runtime "Release"

	filter "configurations:Dist"
		defines "RB_DIST"
		runtime "Release"
		optimize "On"