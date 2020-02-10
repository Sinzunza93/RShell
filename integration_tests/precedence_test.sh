#!/bin/sh

echo "Beginning precedence Testing"
echo "echo hello ; ( echo a ; echo b) , echo hello ; ( echo a ; ( echo b ; echo  c ) ) , ( echo A && echo B ) || ( echo C && echo D ) , echo hello && ( echo a ||  ( echo b && echo c ) ) ,  ( echo A && failed B ) || ( echo C && echo D ) && ( echo E || echo G ) , echo A && ( ( echo B && echo C ) || ( echo D && echo E ) ) && echo G , ( test a.out && [ basse.hpp ] ) || ( exit && echo D ) "

../VerseShell << EOL
echo hello ; ( echo a ; echo b)
echo hello ; ( echo a ; ( echo b ; echo  c ) )
( echo A && echo B ) || ( echo C && echo D )
echo hello && ( echo a ||  ( echo b && echo c ) )
( echo A && failed B ) || ( echo C && echo D ) && ( echo E || echo G )    # output:  A C D E
 echo A && ( ( echo B && echo C ) || ( echo D && echo E ) ) && echo G     # output:  A B C G
( test ../names.txt && [ basse.hpp ] ) || ( exit && echo D )
exit
EOL 
