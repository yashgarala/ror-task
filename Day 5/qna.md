## Quetions

## Why readines was not printing \n?
`` Because compiler trit \n as a new line creator so when we try to print 
it compiler replace with new line if we want to print   \n then you need to write "\\n" like this.  
``

```
  ruby file_copy.rb < sometext.txt > everything.txt d
```
## why above command first started writing from sometext.txt into file_copy.rb and not directly writing to everything.txt
``
file_copy.rb first take a sometext.txt as a input and then output of the file_copy.rb overwrite into everything.txt
``