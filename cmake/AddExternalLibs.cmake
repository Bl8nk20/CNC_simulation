include(FetchContent)

# json handling
FetchContent_Declare(
        nlohmann_json
        GIT_REPOSITORY https://github.com/nlohmann/json
        GIT_TAG v3.11.3
        GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(nlohmann_json)

# better logging
FetchContent_Declare(
        spdlog
        GIT_REPOSITORY https://github.com/gabime/spdlog
        GIT_TAG v1.13.0
        GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(spdlog)

# Cli tools
FetchContent_Declare(
        cxxopts
        GIT_REPOSITORY https://github.com/jarro2783/cxxopts
        GIT_TAG v3.1.1
        GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(cxxopts)

# Boost for more accuracy and bigger floats
FetchContent_Declare(
  multiprecision
  GIT_REPOSITORY https://github.com/boostorg/multiprecision.git
  GIT_TAG      Boost_1_86_0
  GIT_SHALLOW TRUE
)
FetchContent_MakeAvailable(multiprecision)

FetchContent_Declare(
  math
  GIT_REPOSITORY https://github.com/boostorg/math.git
  GIT_TAG      boost-1.86.0
  GIT_SHALLOW TRUE
)
FetchContent_MakeAvailable(math)


# GUI
FetchContent_Declare(
        fltk
        GIT_REPOSITORY
        GIT_TAG release-1.4.4
        GIT_SHALLOW TRUE)
FetContent_MakeAvailable(fltk)

# Testing
if(ENABLE_TESTING)
	FetchContent_Declare(
		Catch2
		GIT_REPOSITORY https://github.com/catchorg/Catch2
		GIT_TAG v3.5.3
		GIT_SHALLOW TRUE)
        FetchContent_MakeAvailable(Catch2)
        list(APPEND CMAKE_MODULE_PATH ${catch2_SOURCE_DIR}/extras)
endif()
