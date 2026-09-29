cmake_minimum_required(VERSION 4.0)

project(Sauerbraten LANGUAGES CXX)

find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)
find_package(SDL2_mixer REQUIRED)
find_package(OpenGL REQUIRED)
find_package(ZLIB REQUIRED)
find_package(X11 REQUIRED)

find_package(PkgConfig REQUIRED)
pkg_check_modules(ENET REQUIRED IMPORTED_TARGET libenet)

add_executable(sauerbraten_client
    shared/crypto.cpp
    shared/geom.cpp
    shared/glemu.cpp
    shared/stream.cpp
    shared/tools.cpp
    shared/zip.cpp
    engine/3dgui.cpp
    engine/bih.cpp
    engine/blend.cpp
    engine/blob.cpp
    engine/client.cpp
    engine/command.cpp
    engine/console.cpp
    engine/cubeloader.cpp
    engine/decal.cpp
    engine/dynlight.cpp
    engine/glare.cpp
    engine/grass.cpp
    engine/lightmap.cpp
    engine/main.cpp
    engine/material.cpp
    engine/menus.cpp
    engine/movie.cpp
    engine/normal.cpp
    engine/octa.cpp
    engine/octaedit.cpp
    engine/octarender.cpp
    engine/physics.cpp
    engine/pvs.cpp
    engine/rendergl.cpp
    engine/rendermodel.cpp
    engine/renderparticles.cpp
    engine/rendersky.cpp
    engine/rendertext.cpp
    engine/renderva.cpp
    engine/server.cpp
    engine/serverbrowser.cpp
    engine/shader.cpp
    engine/shadowmap.cpp
    engine/sound.cpp
    engine/texture.cpp
    engine/water.cpp
    engine/world.cpp
    engine/worldio.cpp
    fpsgame/ai.cpp
    fpsgame/client.cpp
    fpsgame/entities.cpp
    fpsgame/fps.cpp
    fpsgame/monster.cpp
    fpsgame/movable.cpp
    fpsgame/render.cpp
    fpsgame/scoreboard.cpp
    fpsgame/server.cpp
    fpsgame/waypoint.cpp
    fpsgame/weapon.cpp
)

target_include_directories(sauerbraten_client PRIVATE
    engine
    fpsgame
    shared
)

target_link_libraries(sauerbraten_client PRIVATE
    SDL2::SDL2
    SDL2_image::SDL2_image
    SDL2_mixer::SDL2_mixer
    OpenGL::OpenGL
    ZLIB::ZLIB
    X11::X11
    PkgConfig::ENET
    rt
)

target_compile_options(sauerbraten_client PRIVATE
    -O3
    -fomit-frame-pointer
    -ffast-math
    -Wall
    -fsigned-char
    -fno-exceptions
    -fno-rtti
)
