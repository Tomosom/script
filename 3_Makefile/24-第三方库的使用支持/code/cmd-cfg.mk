
AR := ar
ARFLAGS := crs

CC := gcc
#LFLAGS :=
#CFLAGS := -I$(DIR_INC) -I$(DIR_COMMON_INC) -I$(DIR_LIBS_INC)
LFLAGS := -m32
CFLAGS := -I$(DIR_INC) -I$(DIR_COMMON_INC) -I$(DIR_LIBS_INC) -m32

ifeq ($(DEBUG),true)
CFLAGS += -g
endif

MKDIR := mkdir
RM := rm -fr
CP := cp

