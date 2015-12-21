
# MACRO

INCLUDE_DIR = ../../include
PRIME_DIR = ../../prime
CC = g++
DEBUG = -g
SFLAGS = -Wall -Wextra -std=c++14 -m32
IFLAGS = -I$(INCLUDE_DIR) -I$(PRIME_DIR)
CFLAGS = $(SFLAGS) $(DEBUG) -c
LFLAGS = $(SFLAGS) $(IFLAGS) $(DEBUG)
OBJS_INCLUDE_DIR = ./.make-cache/include
OBJS_PRIME_DIR = ./.make-cache/prime
OBJS_MAIN_DIR = ./.make-cache/main
ALL_OBJS = $(OBJS_INCLUDE_DIR)/utilities.o $(OBJS_INCLUDE_DIR)/abbreviation.o $(OBJS_PRIME_DIR)/prime.o $(OBJS_INCLUDE_DIR)/winutil.o

# MAIN ENTRIES

main: $(OBJS_MAIN_DIR)/main.o
	$(CC) $(LFLAGS) -o ./.out/main.exe $(OBJS_MAIN_DIR)/main.o

$(OBJS_MAIN_DIR)/main.o: main.cpp __main_directives.cc __main.cc __main_directives.cc __main.cc $(ALL_OBJS)
	$(CC) $(CFLAGS) -o $(OBJS_MAIN_DIR)/main.o main.cpp $(IFLAGS)

$(OBJS_INCLUDE_DIR)/utilities.o: $(INCLUDE_DIR)/utilities.hpp
	$(CC) $(CFLAGS) -o $(OBJS_INCLUDE_DIR)/utilities.o $(INCLUDE_DIR)/utilities.hpp

$(OBJS_INCLUDE_DIR)/abbreviation.o: $(INCLUDE_DIR)/abbreviation.hpp
	$(CC) $(CFLAGS) -o $(OBJS_INCLUDE_DIR)/abbreviation.o $(INCLUDE_DIR)/abbreviation.hpp

$(OBJS_INCLUDE_DIR)/winutil.o: $(INCLUDE_DIR)/winutil.hpp
	$(CC) $(CFLAGS) -o $(OBJS_INCLUDE_DIR)/winutil.o $(INCLUDE_DIR)/winutil.hpp

$(OBJS_PRIME_DIR)/prime.o: $(PRIME_DIR)/prime.hxx
	$(CC) $(CFLAGS) -o $(OBJS_PRIME_DIR)/prime.o $(PRIME_DIR)/prime.hxx

# DEPENDENCIES OF DEPENDENCIES

$(INCLUDE_DIR)/utilities.hpp: $(INCLUDE_DIR)/__utilities.hpp $(INCLUDE_DIR)/defined_utility_macros.hpp

$(INCLUDE_DIR)/defined_utility_macros.hpp: $(INCLUDE_DIR)/__defined_utility_macros.hpp

$(INCLUDE_DIR)/abbreviation.hpp: $(INCLUDE_DIR)/__abbreviation.hpp

$(INCLUDE_DIR)/winutil.hpp: $(INCLUDE_DIR)/__winutil.hpp

# OTHERS

clean:
	__clean.cmd main.exe $(OBJS_MAIN_DIR)/main.o $(ALL_OBJS)
