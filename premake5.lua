-- Box2D premake5 script.
-- https://premake.github.io/

project 'Box2D'
	kind 'StaticLib'
    cppdialect 'C++11'

    targetdir ("lib")
    objdir ("obj")

	files { 'Box2D/**' }
    includedirs { '.' }

    makesettings [[
        CC = g++
    ]]

    defines { 'NDEBUG' }
		optimize 'On'

    filter 'system:windows'
		defines { '_CRT_SECURE_NO_WARNINGS' }
