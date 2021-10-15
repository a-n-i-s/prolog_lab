%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%	Problem: Write a prolog program so that the user can attempt entry three times. After three		    %%
%% attempts, the program should terminate with a message indicating that the user is not permitted    %%
%% access. 	   																				   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
auth(['Uer'],['password']).				%% user and password for auth
login(N,_):-							%% login denied when no trial remains
	0 is N,
	write('You are not allowed to access.\n\n\n'),
	halt.
login(_,Ok):-							%% login is successfull 
	Ok,
	write("You have successfully logged in\n"),halt.
login(N,_):-							
	write(N),
	write(' trial(s) left\n'),
	write("enter username: "),
	readln(User),
	write("enter password: "),
	readln(Pass),
	NN is N - 1,
	Okk = auth(User,Pass),			%% password matches
	login(NN, Okk).					%% login is successfull if password matches or login is successfull for 											(N-1)th trial.
	
:-login(3,false).						%% login for 3 trial and currently not logged in.
