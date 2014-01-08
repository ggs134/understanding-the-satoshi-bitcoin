

html: understanding_the_satoshi_bitcoin.md
	pandoc -s understanding_the_satoshi_bitcoin.md -o understanding_the_satoshi_bitcoin.html 
	firefox understanding_the_satoshi_bitcoin.html


clean:
	rm understanding_the_satoshi_bitcoin.html
