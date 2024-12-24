cmake_minimum_required(VERSION 3.10)
project(FlappyBird)

set(CMAKE_CXX_STANDARD 17)

# Find SFML
find_package(SFML 2.5 COMPONENTS graphics window system REQUIRED)

# Set source files
set(SOURCE_FILES game.cpp)

# Create executable
add_executable(${PROJECT_NAME} MACOSX_BUNDLE ${SOURCE_FILES} ${APP_ICON_MACOSX})

# Link SFML
target_link_libraries(${PROJECT_NAME} sfml-graphics sfml-window sfml-system)

# Set app bundle properties
set_target_properties(${PROJECT_NAME} PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER "com.yourdomain.flappybird"
    MACOSX_BUNDLE_BUNDLE_NAME "Flappy Bird"
    MACOSX_BUNDLE_BUNDLE_VERSION "1.0"
    MACOSX_BUNDLE_SHORT_VERSION_STRING "1.0"
    MACOSX_BUNDLE_INFO_PLIST "${CMAKE_SOURCE_DIR}/Info.plist"
    MACOSX_BUNDLE_ICON_FILE "Icon.icns"
    RESOURCE "${APP_ICON_MACOSX}"
)

# Copy resources to app bundle
set(RESOURCE_FILES
    ${CMAKE_SOURCE_DIR}/bird.png
    ${CMAKE_SOURCE_DIR}/arial.ttf
)

foreach(RESOURCE ${RESOURCE_FILES})
    get_filename_component(FILENAME ${RESOURCE} NAME)
    set_source_files_properties(${RESOURCE} PROPERTIES MACOSX_PACKAGE_LOCATION "Resources")
    target_sources(${PROJECT_NAME} PRIVATE ${RESOURCE})
endforeach()

find_library(CORE_FOUNDATION_LIBRARY CoreFoundation)
target_link_libraries(${PROJECT_NAME} ${CORE_FOUNDATION_LIBRARY})

# Get SFML's library paths
get_target_property(SFML_GRAPHICS_LIB sfml-graphics LOCATION)
get_target_property(SFML_SYSTEM_LIB sfml-system LOCATION)
get_target_property(SFML_WINDOW_LIB sfml-window LOCATION)

# Copy SFML frameworks into the app bundle
set(SFML_FRAMEWORKS
    ${SFML_GRAPHICS_LIB}
    ${SFML_SYSTEM_LIB}
    ${SFML_WINDOW_LIB}
)

foreach(FRAMEWORK ${SFML_FRAMEWORKS})
    get_filename_component(FRAMEWORK_NAME ${FRAMEWORK} NAME_WE)
    add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy
        ${FRAMEWORK}
        "${CMAKE_BINARY_DIR}/${PROJECT_NAME}.app/Contents/Frameworks/${FRAMEWORK_NAME}.framework"
    )
endforeach()

# Fix the RPATH
set_target_properties(${PROJECT_NAME} PROPERTIES
    BUILD_WITH_INSTALL_RPATH TRUE
    INSTALL_RPATH "@executable_path/../Frameworks"
) 