cmake_minimum_required(VERSION 3.16)

project(calc_view VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)

set(SOURCE_FILES main.cpp)

add_executable(calc_view ${SOURCE_FILES})

set(CMAKE_AUTOMOC ON) 
set(CMAKE_AUTORCC ON)
# set(QT_QML_GENERATE_QMLLS_INI ON)

find_package(Qt5 COMPONENTS
             Core 
             Gui 
             Qml 
             Quick 
             Widgets 
             QuickControls2
             REQUIRED)
             

set(RESOURCES resources.qrc)

qt5_add_resources(RESOURCES_RCC ${RESOURCES})
target_sources(${PROJECT_NAME} PRIVATE ${RESOURCES_RCC})

# Подключение модулей Qt к вашему проекту
target_link_libraries(${PROJECT_NAME} Qt5::Core Qt5::Quick)
add_subdirectory(./core_calculator)

target_link_libraries(calc_view calc_core)