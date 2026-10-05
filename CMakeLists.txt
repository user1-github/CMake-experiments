cmake_minimum_required(VERSION 4.0)

project(Tesseract LANGUAGES CXX)

find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)
find_package(SDL2_mixer REQUIRED)
find_package(OpenGL REQUIRED)
find_package(ZLIB REQUIRED)
find_package(X11 REQUIRED)

find_package(PkgConfig REQUIRED)
pkg_check_modules(ENET REQUIRED IMPORTED_TARGET libenet)

add_executable(client
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
    engine/godrays.cpp
    engine/grass.cpp
    engine/heathaze.cpp
    engine/light.cpp
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
    game/ai.cpp
    game/client.cpp
    game/entities.cpp
    game/game.cpp
    game/render.cpp
    game/scoreboard.cpp
    game/server.cpp
    game/waypoint.cpp
    game/weapon.cpp
)

target_include_directories(client PRIVATE
    engine
    game
    shared
)

target_link_libraries(client PRIVATE
    SDL2::SDL2
    SDL2_image::SDL2_image
    SDL2_mixer::SDL2_mixer
    OpenGL::OpenGL
    ZLIB::ZLIB
    X11::X11
    PkgConfig::ENET
    rt
)

target_compile_options(client PRIVATE
    -O3
    -fomit-frame-pointer
    -ffast-math
    -Wall
    -fsigned-char
    -fno-exceptions
    -fno-rtti
)
