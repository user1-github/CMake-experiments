cmake_minimum_required(VERSION 4.0)

project(Assault_Cube LANGUAGES CXX)

find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)
find_package(OpenAL REQUIRED)
find_package(Vorbis REQUIRED)
find_package(OpenGL REQUIRED)
find_package(ZLIB REQUIRED)
find_package(X11 REQUIRED)

find_package(PkgConfig REQUIRED)
pkg_check_modules(ENET REQUIRED IMPORTED_TARGET libenet)

add_executable(ac_client
    src/crypto.cpp
    src/audiomanager.cpp
    src/autodownload.cpp
    src/client.cpp
    src/clientgame.cpp
    src/clients2c.cpp
    src/command.cpp
    src/console.cpp
    src/docs.cpp
    src/editing.cpp
    src/entities.cpp
    src/http.cpp
    src/log.cpp
    src/main.cpp
    src/menus.cpp
    src/oggstream.cpp
    src/openal.cpp
    src/packetqueue.cpp
    src/physics.cpp
    src/protocol.cpp
    src/rendercubes.cpp
    src/rendergl.cpp
    src/renderhud.cpp
    src/rendermodel.cpp
    src/renderparticles.cpp
    src/rendertext.cpp
    src/rndmap.cpp
    src/scoreboard.cpp
    src/serverms.cpp
    src/server.cpp
    src/serverbrowser.cpp
    src/shadow.cpp
    src/soundlocation.cpp
    src/soundscheduler.cpp
    src/stream.cpp
    src/texture.cpp
    src/tools.cpp
    src/water.cpp
    src/weapon.cpp
    src/wizard.cpp
    src/world.cpp
    src/worldio.cpp
    src/worldlight.cpp
    src/worldocull.cpp
    src/worldrender.cpp
    src/zip.cpp
    src/bot/bot.cpp
    src/bot/botmanager.cpp
    src/bot/bot_ai.cpp
    src/bot/bot_util.cpp
    src/bot/bot_waypoint.cpp
    src/bot/ac_bot.cpp
    src/bot/ac_bot_ai.cpp
)

target_include_directories(ac_client PRIVATE
    src
    src/bot
)

target_link_libraries(ac_client PRIVATE
    SDL2::SDL2
    SDL2_image::SDL2_image
    OpenAL::OpenAL
    Vorbis::vorbisfile
    OpenGL::OpenGL
    ZLIB::ZLIB
    X11::X11
    PkgConfig::ENET
)

target_compile_options(ac_client PRIVATE
    -O3
    -fomit-frame-pointer
    -Wall
    -fsigned-char
)
