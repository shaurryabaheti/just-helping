program abc; { program name }
uses crt; { a package library }
type vector=array[1..100] of longint; { setting up the type of array }
{ setting up all the variables }
var a:vector;
i,n,min:longint;
f,g:text;

{ Starting the program }
begin
clrscr; { clearing the output screen }
assign(f,'a.1'); { opening the file 'a.1' and assigning it to the variable f }
reset(f); { tbh, idk what this does }
assign(g,'a.2'); { opening the file 'a.2' and assigning it to the variable g }
rewrite(g); { again, dk what this does }
readln(f,n); { reading the first line of the file 'a.1', it is the number of elements in the array }
{ loop to read the elements of the array }
for i:=1 to n do begin
read(f,a[i]);
write(a[i]:4);
end;

{ finding the minimum element of the array }
min:=a[1]; { using the first element as the comparison point, the comparison point will be the minimum one by the end of the array }
for i:=1 to n do begin
if a[i]<min then begin { if the element that we are looking at (a[i]) is less than the comparison point, we change the value of the comparison point to this }
min:=a[i];
end;
end;
{ changing the positive elements of the array to the minimum element we found above, and writing it and the ones that were not changed as well }
for i:=1 to n do begin
if a[i]>0 then begin
a[i]:=min;
end;
write(g,a[i]:4);
end;
{ this is literally the most important part, don't forget to close the files xD }
close(f);
close(g);
readln;
end. { and the last end is a fullstop, I made that mistake as well xD }
