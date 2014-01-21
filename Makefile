SOURCE_FILE_NAME = bitcoin.md
BOOK_NAME = Understanding-the-Satoshi-Bitcoin
PANDOC_OPTIONS = --from=markdown+simple_tables+grid_tables+pipe_tables+multiline_tables+table_captions

vpath %.dot graphviz

html: bitcoin.md res/images/merkle_tree.png
	pandoc  $(PANDOC_OPTIONS) $(SOURCE_FILE_NAME) -o $(BOOK_NAME).html 
	firefox $(BOOK_NAME).html

res/images/%.png: %.dot
	dot -Tpng $< > $@


clean:
	rm -f BOOK_NAME.*
