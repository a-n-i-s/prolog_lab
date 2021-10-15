%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%	Write a prolog to create a database of addresses (name, street, city, state and ZIP code) and               %%
%%				save this as a dynamic database between sessions.	                                                           %%%																							    %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

writelist([]).					%% prints a list 
writelist([H|T]):-				%% readln takes input 
	write(H),
	write(" "),
	writelist(T).
	
getdata(Name):-
	load_files('myfile'),						%% loads file 'myfile'	
	retract(address(Name,Street,City,State,Zip)),	%% reads from database
	write("\nName: "),
	writelist(Name),
	write("\nStreet: "),
	write(Street),
	write("\nCity: "),
	write(City),
	write("\nState: "),
	write(State),
	write("\nZip: "),
	write(Zip).


getdata(Name):-
	load_files('myfile'),
	not(retract(address(Name,_,_,_,_))),  %% check if Name exists.
	write("not found\n"),
	fail.					

	
get:-
	write("Enter a name:\n"),
	readln(Name),
	getdata(Name).
	
%% code above not asked in question. just in case asked to show database output%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set:-
	write("Enter name:  "),
	readln(Name),
	write("Enter Street:  "),
	readln(Street),
	write("Enter City:  "),
	readln(City),
	write("Enter State:  "),
	readln(State),
	write("Enter Zip:  "),
	readln(Zip),
	assertz(address(Name,Street,City,State,Zip)),		%% new address in database
	tell('myfile'),									%% open for writting
	listing(address),								%% write all addresses
	told,										%% writting finished
	write("Successfully saved to database").
	

	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%										Querry												%
%	set.      %% for entry and saving address													%
%     get.     %% if you want to check if the data exists.											%
%																						 	%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
