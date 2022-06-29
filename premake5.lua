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

    cppdialect "C++17"
    staticruntime "On"
    systemversion "latest"

    filter "system:linux"
        pic "On"

    filter "configuration:Debug"
        runtime "Debug"
        symbols "On"
    
    filter "configurations:Release"
        rumtime "Release"
        optimize "On"