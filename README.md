# CNC_simulation

## Introduction to this Project

This Project is going to be a successor to  
Hubert Klinker's PalMill & PalTurn Programs.
This is going to be hopefully as usefull for future apprentices as it was for me to learn CNC-Programming.

## Features

This Project should have at least the following features:

* Text-Editor
* Possibilities to save, export and load configurations from CNC-Maschine's
* Adjustment and Configuration of Material and Tools
* Easy to use and understand UI
* Visualisation of programmed CNC Code

The following features are a nice to have features, which are not too esential, but helps enormous in developing

* Syntax-Highlighting
* Debugging features
* Code Completions

## How to run

`docker build -t cnc_sim .`  
`docker run cnc_sim`

## Used External Libraries

* Eigen -> Used for simplicity in Matrices and Vector Calculations
* Boost:Multiprecision -> Used for bigger floats => more precise Calculations
* Boost:Math -> Used for compatibility -> not sure yet
* nlohmann_json -> Better Json handling
* cxxopts -> Easier Command Line Arguments
* speedlog -> better logging
* Catch2 -> Used for testing
* fltk -> lightweight UI library
