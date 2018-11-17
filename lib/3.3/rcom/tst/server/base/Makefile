# -*-Makefile-*-
#INCFLAGS = -I../../../server/common
CFLAGS = -Wall -fvtable-thunks $(INCFLAGS) -g -mno-cygwin
#CXXFLAGS = -Wall $(INCFLAGS) -g -mno-cygwin
CXXFLAGS = -Wall -fvtable-thunks $(INCFLAGS) -g -mno-cygwin
LDLIBS = -lole32 -luuid -loleaut32
LDFLAGS = -g -mno-cygwin
MIDL = midl /I../../../server/common

all:	create1

create1:	create1.o rcom_srv_i.o
