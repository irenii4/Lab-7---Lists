
% Task 1: Delete every occurrence

% Base case: empty list
deleteElement(_, [], []).

% If Head equals X, skip it
deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

% Otherwise, keep Head and continue
deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).