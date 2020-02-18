
.PHONY : all

#DIR_BUILD := /home/delphi/make/build
#DIR_COMMON_INC := /home/delphi/make/common/inc
DIR_BUILD := ../build
DIR_COMMON_INC := ../common/inc

DIR_SRC := src
DIR_INC := inc

TYPE_INC := .h
TYPE_SRC := .c
TYPE_OBJ := .o
TYPE_DEP := .dep

AR := ar
ARFLAGS := crs

CC := gcc
# 两个地方去找头文件
CFLAGS := -I$(DIR_INC) -I$(DIR_COMMON_INC)

ifeq ($(DEBUG),true)
CFLAGS += -g
endif

# 获取相对路径的绝对路径
MODULE := $(realpath .)
# 只剩当前文件夹的名字
MODULE := $(notdir $(MODULE))

DIR_OUTPUT := $(addprefix $(DIR_BUILD)/, $(MODULE))

OUTPUT := $(MODULE).a
OUTPUT := $(addprefix $(DIR_BUILD)/, $(OUTPUT))

# src/*.c
SRCS := $(wildcard $(DIR_SRC)/*$(TYPE_SRC))
# ../build/$(MODULE)/*.o
OBJS := $(SRCS:$(TYPE_SRC)=$(TYPE_OBJ))
OBJS := $(patsubst $(DIR_SRC)/%, $(DIR_OUTPUT)/%, $(OBJS))
# ../build/$(MODULE)/*.dep
DEPS := $(SRCS:$(TYPE_SRC)=$(TYPE_DEP))
DEPS := $(patsubst $(DIR_SRC)/%, $(DIR_OUTPUT)/%, $(DEPS))

vpath %$(TYPE_INC) $(DIR_INC)
vpath %$(TYPE_INC) $(DIR_COMMON_INC)
vpath %$(TYPE_SRC) $(DIR_SRC)

-include $(DEPS)

all : $(OUTPUT)
	@echo "Success! Target ==> $(OUTPUT)"
	
$(OUTPUT) : $(OBJS)
	$(AR) $(ARFLAGS) $@ $^
	
$(DIR_OUTPUT)/%$(TYPE_OBJ) : %$(TYPE_SRC)
	$(CC) $(CFLAGS) -o $@ -c $(filter %$(TYPE_SRC), $^)
	
	
$(DIR_OUTPUT)/%$(TYPE_DEP) : %$(TYPE_SRC)
	@echo "Creating $@ ..."
	@set -e; \
	$(CC) $(CFLAGS) -MM -E $(filter %$(TYPE_SRC), $^) | sed 's,\(.*\)\.o[ :]*,$(DIR_OUTPUT)/\1$(TYPE_OBJ) $@ : ,g' > $@