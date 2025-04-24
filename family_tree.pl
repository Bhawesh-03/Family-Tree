% Basic Facts
parent(john, mary).
parent(john, mike).
parent(susan, mary).
parent(susan, mike).

parent(mary, lisa).
parent(mary, tom).
parent(steve, lisa).
parent(steve, tom).

parent(mike, anna).
parent(mike, jack).
parent(sara, anna).
parent(sara, jack).

male(john).
male(mike).
male(steve).
male(tom).
male(jack).

female(susan).
female(mary).
female(sara).
female(lisa).
female(anna).

% Derived Rules
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

cousin(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B), X \= Y.

child(X, Y) :- parent(Y, X).

descendant(X, Y) :- parent(Y, X).
descendant(X, Y) :- parent(Y, Z), descendant(X, Z).