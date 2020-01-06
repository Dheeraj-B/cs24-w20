#!/usr/bin/env bash

#@test{"stdout":1,"stderr":1,"name":"There should be a file called hello.cpp"}
ls -1 hello.cpp


#@test{"stderr":1,"name":"hello.cpp should give a clean compile"}
g++ -std=c++11 -fsyntax-only -c hello.cpp


make hello

#@test{"stdout":97,"name":"basic test"}
./hello

