%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%	Problem: Write a prolog program to check whether a year is a leap year or not. 	  			   %%
%%																							    %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% year is leap year if (year % 400) =0 else {  (year%4)=0 but (year%100)!=0  }
is_leapyear(Year):-
Year>=0,									%% Year cannot be negative
0 is mod(Year,400).

is_leapyear(Year):-
Year>=0,
0 is mod(Year,4),
mod(Year,100)>0.

print_leap(Year):-								%% prints if leapyear
	is_leapyear(Year),
	write("Leap Year\n\n").


print_leap(Year):-
	not(is_leapyear(Year)),
	write("Not Leap Year\n\n").

:-
	write("Enter a year: "),
	readln(Year),
	print_leap(Year),
	halt.

