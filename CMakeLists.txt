cmake_minimum_required(VERSION 4.0)

project(Cube_Conflict LANGUAGES CXX)

find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)
find_package(OpenAL REQUIRED)
find_package(SndFile REQUIRED)
find_package(OpenGL REQUIRED)
find_package(ZLIB REQUIRED)
find_package(X11 REQUIRED)

find_package(PkgConfig REQUIRED)
pkg_check_modules(ENET REQUIRED IMPORTED_TARGET libenet)

add_executable(cc_client
    shared/crypto.cpp
    shared/geom.cpp
    shared/glemu.cpp
    shared/stream.cpp
    shared/tools.cpp
    shared/zip.cpp
    engine/aa.cpp
    engine/bih.cpp
    engine/blend.cpp
    engine/client.cpp
    engine/command.cpp
    engine/console.cpp
    engine/dynlight.cpp
    engine/grass.cpp
    engine/heathaze.cpp
    engine/godrays.cpp
    engine/lensflare.cpp
    engine/light.cpp
    engine/main.cpp
    engine/material.cpp
    engine/menus.cpp
    engine/normal.cpp
    engine/octa.cpp
    engine/octaedit.cpp
    engine/octarender.cpp
    engine/physics.cpp
    engine/pvs.cpp
    engine/rendergl.cpp
    engine/renderlights.cpp
    engine/rendermodel.cpp
    engine/renderparticles.cpp
    engine/rendersky.cpp
    engine/rendertext.cpp
    engine/renderva.cpp
    engine/server.cpp
    engine/serverbrowser.cpp
    engine/shader.cpp
    engine/sound.cpp
    engine/stain.cpp
    engine/texture.cpp
    engine/ui.cpp
    engine/water.cpp
    engine/world.cpp
    engine/worldio.cpp
    cubeconflict/gfx.cpp
    cubeconflict/customs.cpp
    cubeconflict/hud.cpp
    cubeconflict/stats.cpp
    cubeconflict/npcs.cpp
    cubeconflict/rpg.cpp
    game/ai.cpp
    game/bouncers.cpp
    game/classes.cpp
    game/client.cpp
    game/entities.cpp
    game/game.cpp
    game/hitlog.cpp
    game/inventory.cpp
    game/projectiles.cpp
    game/render.cpp
    game/scoreboard.cpp
    game/server.cpp
    game/waypoint.cpp
    game/weapon.cpp
)

target_include_directories(cc_client PRIVATE
    cubeconflict
    engine
    game
    shared
)

target_link_libraries(cc_client PRIVATE
    SDL2::SDL2
    SDL2_image::SDL2_image
    OpenAL::OpenAL
    SndFile::sndfile
    OpenGL::OpenGL
    ZLIB::ZLIB
    X11::X11
    PkgConfig::ENET
)

target_compile_options(cc_client PRIVATE
    -O3
    -fomit-frame-pointer
    -ffast-math
    -Wall
    -fsigned-char
    -fno-exceptions
    -fno-rtti
)
