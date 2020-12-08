male(charles).
male(andrew).
male(edward).
female(ann).
order_of_birth(charles, 1).
order_of_birth(ann, 2).
order_of_birth(andrew, 3).
order_of_birth(edward, 4).
elder(X, Y):- order_of_birth(X, A), order_of_birth(Y, B), A<B.
rank_higher(X, Y):- elder(X, Y).
memberCheckSimple([Head|_], Head).
memberCheckSimple([_|Tail], Head) :- memberCheckSimple(Tail, Head).
rank(A, B, C, D, [Head|Tail]):- memberCheckSimple([Head|Tail], A),
    memberCheckSimple([Head|Tail], B),
    memberCheckSimple([Head|Tail], C)
    ,memberCheckSimple([Head|Tail], D),
    rank_higher(A,B),
    rank_higher(A,C),
    rank_higher(A,D),
    rank_higher(B,C),
    rank_higher(B,D),
    rank_higher(C,D).
