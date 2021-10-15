%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%			Problem: Write a prolog program to find factorial to a given number.					   %%
%%																							    %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

factorial(0,1).   %% 0!  = 1
factorial(N,F):-  %% N!  = F is (N-1)! * N = F
	NN is N-1,  
	factorial(NN,FF),
	F is FF*N.
:-
	write("Enter a number: "),			%% input output
	readln(N),
	factorial(N,F),
	write("Factorial of the number is: "),
	write(F),
	write("\n"),
	halt.

