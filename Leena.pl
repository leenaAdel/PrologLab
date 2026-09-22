%Facts
% Male facts
male(adel).
male(elyas).
male(mishal).
% Female facts
female(fadela).
female(leena).
female(lara).

% Parent relationship
parent(adel, leena).
parent(adel, elyas).
parent(adel, lara).
parent(adel, mishal).

parent(fadela, leena).
parent(fadela, elyas).
parent(fadela, lara).
parent(fadela, mishal).

%Rules
father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

brother(X, Y) :-
    male(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

sister(X, Y) :-
    female(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.
