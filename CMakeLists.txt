cmake_minimum_required(VERSION 3.12)
project(mec-blokas)

set(DISABLE_RPATH_OVERRIDE 1)
set(DISABLE_LIBUSB 1)
set(DISABLE_SOUNDPLANELITE 1)
set(DISABLE_PUSH2 1)
set(DISABLE_EIGENHARP 1)
#set(CPU_OPTIMIZATION_FLAGS "")
add_subdirectory(MEC)

install(TARGETS mec-app DESTINATION bin)
install(TARGETS portaudio oscpack mec-utils cjson mec-kontrol-api mec-api rtmidi DESTINATION lib/MEC)
install(FILES mec DESTINATION bin)