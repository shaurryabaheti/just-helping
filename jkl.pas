program jkl; (* this just specifies the name of the program nothing much *)
uses crt; (* this is a package, it contains prewritten code that you can use, like readln, write, writeln, clrscr, etc *)
type ana=array[1..100] of longint; (* this line is creating a custom array type that starts at position 1 and has a maximum of 100 element capacity, array is a list *)
var a:ana; (* here an array of array type ana is being created, this is the list that we will work on *)
	i,n,s:longint; (* variables i, n and s are of longint types meining long integers, they can store big integer numbers, integers are the numbers that don't have decimals *)
	med:real; (* here a variable med is created with the datatype of real, which means it will store values with decimals as well as integers *)

begin (* begin and end statements imply that there is a block of code following, the first begin statement marks the starting of the main part of any program and reaching the end it means the program has ended, lol *)
clrscr; (* this clears the output screen clr for clear scr for screen  *)
write('indicati numarul de elemente n='); (* this is to print a statement for the user that asks for the number of elements for the array a *)
readln(n); (* the readln keyword is used to read a line that the user will input on the output screen and store it in the variable inside the brackets, in this case n *)
for i:=1 to n do begin (* this is a loop, it is used to go through a set of commands that need to be repeated a certain times, in this case from 1 to n, with or without a variation *)
(* i is what we call a lcv, loop control variable, it is used as a counter for how many times we will run a loop, can be used to deal with an array, etc *)
write('introduceti a[',i,']='); (* this is printing a statement asking the user to enter the element that will be at the position i in the list a *)
readln(a[i]); (* this is taking the number user enters *)
end; (* notice the begin statement marks the start of the commands that the for loop will repeat, and the end marks the end of it, but it goes back on to the first one to see if it has anymore runs left *)
(* when i gets beyond n we exit out of the for loop *)
s:=0; (* we need a variable to store the sum of elements,  *)
for i:=1 to n do begin (* again a loop that will be used to repeat a set of commands, a certain number of times, in this case from i = 1 to i = n *)
if (a[i] % 2 = 1) then begin (* this is what I added, here you see is an if statement, self-explanatory, a[i] % 2 is a mathematical operation, it gives us the remainder when a[i],
which is the number at the position i in the array a, is divided by 2, which can be 0 or 1, basic maths *)
s:=s+a[i]; (* when the remainder is 1 it means the number is odd, and hence we will add that number to the sum, to do that we re-assign the value of s to s + a[i]*)
end; (* this marks the end of the set of statements that the program will run if i is odd, i.e. i%2 = 1, btw a[i] is a notation to get the element at position i in the list a *)
end; (* this marks the end of the for loop commands *)
writeln('sum of elements at odd places=',s); (* please use romanian in the '' instead of english, this command is used to print the value of s using the writeln command *)
readln; (* this is used to take input from user but in this case it used to keep the program running until user presses enter, which will then make the program end *)
end; (* now the program is ended *)


(* difference between write and writeln is that write will not move the cursor to next line so if you write anything after it it will print it in the same line
	where as writeln will also take the cursor to next line, so when you write anything else you will begin from a new line


	also... the notes I have written in these bracket star pairs are called comments. The compiler, the thing that runs your code, will ignore these when compiling. 

 *)
