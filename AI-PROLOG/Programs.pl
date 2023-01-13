%Assignment - 1
male(jack).
male(oliver).
male(ali).
male(james).
male(simon).
male(harry).
female(helen).
female(sophie).
female(jess).
female(lily).
 
parent_of(jack,jess).
parent_of(jack,lily).
parent_of(helen, jess).
parent_of(helen, lily).
parent_of(oliver,james).
parent_of(sophie, james).
parent_of(jess, simon).
parent_of(ali, simon).
parent_of(lily, harry).
parent_of(james, harry).
 
%Rules 
father_of(X,Y):- male(X),
    parent_of(X,Y).
 
mother_of(X,Y):- female(X),
    parent_of(X,Y).
 
grandfather_of(X,Y):- male(X),
    parent_of(X,Z),
    parent_of(Z,Y).
 
grandmother_of(X,Y):- female(X),
    parent_of(X,Z),
    parent_of(Z,Y).
 
sister_of(X,Y):-    female(X),
    parent_of(F, Y), parent_of(F, X),X \= Y.
 
 
brother_of(X,Y):- male(X),
    parent_of(F, Y), parent_of(F,X),X \= Y.

aunt_of(X,Y):- female(X),
    parent_of(Z,Y), sister_of(X,Z).

uncle_of(X,Y):- male(X),
    parent_of(Z,Y), brother_of(X, Z).
 
ancestor_of(X,Y):- parent_of(X,Y).
ancestor_of(X,Y):- parent_of(Z,Y),
    ancestor_of(X,Z).

%Assignment - 2
find_sum(A, B):- R is A + B, write('sum = '), write(R).

%Assignment - 3
find_product(A, B, C):- R is A * B * C, write('product = '), write(R).

%Assignment - 4
find_odd_even(A, X):- X =:= 0, write(A), write(' is even').
find_odd_even(A, X):- X =\= 0, write(A), write(' is odd').
odd_even(A):- R is (A mod 2), find_odd_even(A, R).

%Assignment - 5
max_val(X, Y, X):- X >= Y.
max_val(X, Y, Y):- Y >= X.

%Assignment - 6
smallest(X, Y, Z, X):- X =< Y, X =< Z.
smallest(X, Y, Z, Y):- Y =< X, Y =< Z.
smallest(X, Y, Z, Z):- Z =< X, Z =< Y.

%Assignment - 7
largest(X, Y, Z, X):- X >= Y, X >= Z.
largest(X, Y, Z, Y):- Y >= X, Y >= Z.
largest(X, Y, Z, Z):- Z >= X, Z >= Y.
maxdiff(A, B, C):- X is abs(A-B),
    Y is abs(A-C),
	Z is abs(B-C),
	largest(X, Y, Z, R), write('max difference is '), write(R).

%Assignment - 8
find_ans(A, B, C, X, Y, Z, R):- R =:= X, write(' closest pair is '), write(A), write(' and '), write(B). 
find_ans(A, B, C, X, Y, Z, R):- R =:= Y, write(' closest pair is '), write(A), write(' and '), write(C). 
find_ans(A, B, C, X, Y, Z, R):- R =:= Z, write(' closest pair is '), write(B), write(' and '), write(C). 
closest(A, B, C):- X is abs(A-B),
    Y is abs(A-C),
	Z is abs(B-C),
	smallest(X, Y, Z, R),
	find_ans(A, B, C, X, Y, Z, R).

%Assignment - 9
loop_print(0):- !.
loop_print(N) :- 0 < N, 
                 write('PROLOG in Artificial Intelligence'), nl, 
			     M is N - 1, loop_print(M).

%Assignment - 10
find_summation(N, S, I):- I > N, write(S), !.
find_summation(N, S, I):- I =< N, S1 is S + I, I1 is I +1, 
                          find_summation(N, S1, I1).
summation(N):- find_summation(N, 0, 1).

%Assignment - 11
summation0(0, 0).
summation0(N, S):- N > 0, N1 is N - 1, summation0(N1, R), 
                   S is N + R.

%Assignment - 12
find_summation_ap(X, Y, D, S):- X > Y, write(S), !.
find_summation_ap(X, Y, D, S):- X =< Y, X1 is X + D, S1 is S + X, 
                                find_summation_ap(X1, Y, D, S1). 
summation_ap(X, Y, D, S) :- find_summation_ap(X, Y, D, 0).

%Assignment - 13
find_summation_gp(X, Y, F, S):- X > Y, write(S), !.
find_summation_gp(X, Y, F, S):- X =< Y, X1 is X * F, S1 is S + X,
                                find_summation_gp(X1, Y, F, S1).
								
summation_gp(X, Y, F, S) :- find_summation_gp(X, Y, F, 0).

%Assignment - 14
fact(0, 1).
fact(N, R) :- N > 0, N1 is N - 1, fact(N1, R1), R is N * R1.

%Assignment - 15
fib(0, 1).
fib(1, 1).
fib(N, Result) :- N > 1, N1 is N - 1, N2 is N - 2, 
    fib(N1, Result1), fib(N2, Result2), 
	Result is Result1 + Result2.

%Assignment - 16
gcd(0,B,B). 
gcd(A,0,A). 
gcd(A,B,X):- A > B, gcd(B, A, X).
gcd(A,B,X):- A < B, T is B mod A, gcd(A, T, X).

%Assignment - 17
hanoi(N):- move(N, left, middle, right).
move(1, A, _, C):- inform(A, C), !.
move(N, A, B, C):- N1 is N - 1, move(N1, A, C, B), inform(A, C), 
                      move(N1, B, A, C).
inform(Loc1, Loc2):- nl, write('Move a disk from '), write(Loc1),
                         write(' to '), write(Loc2).

%Assignment - 18
max_of_two(X,Y,X) :- X >= Y, !.
max_of_two(X,Y,Y) :- X < Y.
list_max_elem([X],X).
list_max_elem([X|Rest],Max) :-
   list_max_elem(Rest,MaxRest),
   max_of_two(X,MaxRest,Max).

%Assignment - 19
list_sum([],0).
list_sum([Head|Tail], Sum) :-
   list_sum(Tail,SumTemp),
   Sum is Head + SumTemp.

%Assignment - 20
evenlength([]).
evenlength([H1|[H2|T]]):-evenlength(T).

%Assignment - 21
oddlength(L):- \+ evenlength(L).

%Assignment - 22
appendList([],L,L).
appendList([H|T],L2,[H|L3])  :-  appendList(T,L2,L3).

%Assignment - 23
naiverev([],[]).
naiverev([H|T],R):-  naiverev(T, RevT),  appendList(RevT, [H], R).
accRev([],A,A).
accRev([H|T],A,R):-  accRev(T,[H|A],R).
revAcc(L,R):-  accRev(L,[],R).

%Assignment - 24
is_palindrome(L) :- revAcc(L,L).

%Assignment - 25
remove([], [], X).
remove([X|T1], L, X) :- remove(T1, L, X), !.
remove([H|T1], [H|T2], X) :- remove(T1, T2, X).

%Assignment - 26
remove_nth([H|T], 1, T).
remove_nth([H|T1], N, [H|T2]) :- N > 1, 
   N1 is N - 1, remove_nth(T1, N1, T2).

%Assignment - 27
insert_nth(X, 1, L, [X|L]).
insert_nth(X, N, [H|T1], [H|T2]):- N > 1, N1 is N - 1, insert_nth(X, N1, T1, T2).

%Assignment - 28
diffList([], [], 0).
diffList([H|T1], [H|T2], X):-  diffList(T1, T2, X), !.
diffList([H1|T1], [H2|T2], X):-  diffList(T1, T2, X1), X is X1 + 1.