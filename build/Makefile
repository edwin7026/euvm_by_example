REPO_ROOT=$(shell git rev-parse --show-toplevel 2>/dev/null)
BUILDDIR=$(REPO_ROOT)/build/
SRC_DIR=$(REPO_ROOT)/src/
RES_DIR=$(SRC_DIR)/resources/

THEMES_DIR=$(RES_DIR)/themes/
FONTS_DIR=$(RES_DIR)/fonts/
IMAGES_DIR=$(RES_DIR)/images/

BOOK_PATH=$(BUILDDIR)/book/
BOOK_NAME=euvm_by_example

SRC_FILES:=$(shell find $(SRC_DIR) -name *.*)

ASCII_FLAGS:=-v -v

all: $(BOOK_PATH)/$(BOOK_NAME).pdf

rebuild: clean all

$(BOOK_PATH)/$(BOOK_NAME).pdf: $(SRC_FILES)
	asciidoctor-pdf -a source-highlighter=pygments $(ASCII_FLAGS) $(SRC_DIR)/index.adoc -o $@

clean:
	rm -rf $(BOOK_PATH)