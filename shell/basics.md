# Linux sytnax learning resource file.

## intro
bash is a shell langauage, and its been around since in the early days of linux. it is an old programming lang, which lacks different features, oops, and difficult syntax readability. it is lightwright and create foundation of scripting. as well in todays time is considered to use python or ansible to automate tasks.

## basic commands
they are literally too basic and for the editor I have used vim but if it hard then use the nano editor [works as notepad for window users].

- echo: it is used to print the content after the echo keyword.
`echo Hello`

- cat: it is used to display the all content written in the file.
`cat resource.md`

## variables
variables are the storage unit in the programming lang, which used to store some data which can be fetched [but depends upons its scope that who can accses it or not].
`FIRST_NAME=zero-max-ai`

## input/output
i/o is basic requirement in programming lang which is used to make the script more interactive with the user/client/developer. we can use `read` to take input from user and `echo` to provide any output.
```
echo what is you full name?
read $full_name
echo oh, hello $full_name, its nice to meet you.
```

## positional arguments
positional arguments are the input stream which takes the input for the file or script when the file is called.
- note point: the counting in programming language start from 0 not 1.

to use the positional argumenet we need to use first the filename which we are using and its coresponding inputs
for ex our file is posarg.sh
```
echo hello $1 $2
```
when we calling this file it goes like `./posarg.sh zero-max -ai`
and it will print zero-max-ai

./posarg.sh is at position 0, zero-max is at position=1, and -ai is at position-2 that is the reason we use $1 and $2 not $0 as its our file itself.

## piping
pipping the command is a famous technique where an output of a command becomes the input for the other command. how it works?

this command `ls /usr/bin` will print soo many output onto our screen which is hard for us to find our desired file or directory.

`ls /usr/bin | grep bash`
in this command what will happen that this command actually the content we get from `ls /usr/bin` is actually transfred its outputs to the command after the | piping. which get us desired directory or file we want.

`ls /usr/bin | grep bash | grep bug`
you can also try this command and understand how this command works as the output should be 1 single ex-file 

## output/input redirection
in output, input redirection we redirect the output of some command as the input for someother command!
the famous technique we can find while using > or >> in concatenation.
`echo zero-max-ai > file.txt`
if we ran this command our new file will create and have this content init! we if the file is already in the dir then it will overwrite all the content, to check that you can ran the same command in same dir again and again, and you will get the same result.

but if the command have >> then this will append the content in the file
`echo this is day 2 >> file.txt`
these type of working generally help in logging and monitoring the issue by using scripting methods.

- we can use these >, >> or <, << in multiple ways also.

## test operators
so test operators are the operator which is used to as {!=, ==, >, <} in other programs. To use the test operator we need to use square brackets with content must have space init! for ex-
`[ 1 = 0 ]` this obviously means false and `[ 1 = 1]` is true.
and if you directly use them in terminal then the result will not show and to do that u need to use this command as well `echo $?` which will study in exit codes.

## if/elif/else

## case statements

## arrays

## for loops

## functions

## exit codes

## awk

## sed
