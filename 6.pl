%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%	Problem: Write a prolog program for finding maximum and minimum of given three values. 	   %%
%%																							    %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
max(A,B,C,A):-
		print(A),
		A>=B,A>=C.				%% A is maximum of A,B,C if A>=B and A>=C.
max(A,B,C,B):-
		B>=A,B>=C.
max(A,B,C,C):-
		C>=A,C>=B.

min(A,B,C,A):-
		B>=A,C>=A.				%% B is maximum of A,B,C if B>=A and C>=A.
min(A,B,C,B):-
		A>=B,C>=B.
min(A,B,C,C):-
		A>=C,B>=C.


max(A,B,C):-						%% input output
	max(A,B,C,X),
	write("\n\nMaximum value is: "),
	write(X),
	write("\n\n").
	
min(A,B,C):-
	min(A,B,C,X),
	write("\n\nMinimum value is: "),
	write(X),
	write("\n\n").
	
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%										Querry												%
%	max(2.2,4,9).																				%
%	min(-3,55.7,09).																			%
%																							%
%																						 	%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
