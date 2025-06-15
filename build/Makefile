BUILDDIR=$(shell pwd)
SRC_DIR=$(shell pwd)/../src/
RES_DIR=$(SRC_DIR)/resources/

THEMES_DIR=$(RES_DIR)/themes/
FONTS_DIR=$(RES_DIR)/fonts/
IMAGES_DIR=$(RES_DIR)/images/

BOOK_PATH=$(BUILDDIR)/book/
BOOK_NAME=euvm_by_example

all: $(BOOK_PATH)/$(BOOK_NAME).pdf

$(BOOK_PATH)/$(BOOK_NAME).pdf: $(SRC_DIR)/title.adoc
	asciidoctor-pdf --theme basic -a --themes=$(THEMES_DIR) -a pdf-fontsdir=$(FONTS_DIR) $^ -o $@

clean:
	rm -rf $(BOOK_PATH)