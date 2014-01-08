SOURCE_FILE_NAME = bitcoin.md
BOOK_NAME = Understanding-the-Satoshi-Bitcoin

html: bitcoin.md
	pandoc -s $(SOURCE_FILE_NAME) -o $(BOOK_NAME).html 
	firefox $(BOOK_NAME).html


clean:
	rm BOOK_NAME.*
