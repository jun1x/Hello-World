# Makefile for 'HelloGitHub' example project 
#
# $Make -f makefile
#
# Complete makefile, all files are in the current folder
#
# Compiling and Linking is done separately. 
# - Only compile and generate objects for new or changed source files
# - Only link objects and (re)build the executable when objects changed 

#Compiler
CXX = g++
#Compiler flags
CXXFLAGS = -Wall -Werror -Wextra -pedantic -pedantic-errors
#Linker flags
LDFLAGS = 

#Executable name
EXE = HelloWorld
#Source files
SOURCES = main.cpp
#Header files
HEADERS = 
#Object files
OBJECTS = $(SOURCES:.cpp=.o)

#
# List targets that are not file based, in order to avoid name conflicts with existing files/folders
#
.PHONY: all clean

#
# Main Build target
#
all: $(EXE)

#
# Compiling the source code and generating object files
#	
%.o: %.cpp $(HEADERS)
	@echo "Compile : " $< " and generate object :" $@
	$(CXX) -c $(CXXFLAGS) $< 
	
#
# Linking objects into an executable
#
$(EXE): $(OBJECTS)
	@echo "Link object : " $^ " into executable :" $@
	$(CXX) $^ $(LDFLAGS) -o $@

#
# Clean development environment by removing objects and executable file
# while suppressing print and possible errors
#	
clean:
	@echo "Removing  executable and .o files"
	@rm -f *.o $(EXE)

