#!/bin/bash

case $1 in
    # -h)
    #     echo "Usage: $0 [-m | -c | -d | -git]"
    #     echo "  -m: Create an Makefile."
    #     echo "  -c: Create an CMakeLists.txt."
    #     echo "  -d: Create a Dockerfile."
    #     echo "  -git: Create a .gitignore file."
    #     echo "  -r: Create a README.md file."
    #     exit 0
    # ;;
    -m)
        
        # 如果 Makefile 不存在，则添加以下内容
        if [[ ! -f Makefile ]]; then
            touch Makefile
            echo ".PHONY: all clean run" >> Makefile
            echo "run:" >> Makefile
            echo "" >> Makefile
            echo " Makefile created successfully."
        else
            echo "Makefile already exists."
        fi
        
        
        
        # touch Makefile
        # echo ".PHONY: all clean run" >> Makefile
        # echo "run:" >> Makefile
        # echo " Makefile created successfully."
    ;;
    -r)
        if [ ! -f README.md ]; then
            touch README.md
            echo "README.md created successfully."
        else
            echo "README.md already exists."
        fi
    ;;
    -c)
        if [ ! -f CMakeLists.txt ]; then
            touch CMakeLists.txt
            echo "CMakeLists.txt created successfully."
        else
            echo "CMakeLists.txt already exists."
        fi
        # touch CMakeLists.txt
        # echo " CMakeLists.txt created successfully."
    ;;
    -git)
        if [ ! -f .gitignore ]; then
            touch .gitignore
            # echo "# Ignore build files" >> .gitignore
            # echo "build/" >> .gitignore
            # echo "# Ignore temporary files" >> .gitignore
            # echo "*.tmp" >> .gitignore
            echo ".gitignore created successfully."
        else
            echo ".gitignore already exists."
        fi
    ;;
    -d)
        if [ ! -f Dockerfile ]; then
            touch Dockerfile
            echo "Dockerfile created successfully."
        else
            echo "Dockerfile already exists."
        fi
    ;;
    *)
        echo "Usage: $0 [-m | -c | -d | -git | -r]"
        echo "  -m: Create an Makefile."
        echo "  -c: Create an CMakeLists.txt."
        echo "  -d: Create a Dockerfile."
        echo "  -git: Create a .gitignore file."
        # echo "  pwd: $PWD"
        exit 0
    ;;
esac
