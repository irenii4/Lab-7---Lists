% Task 2: Add an element at the end

% Base case: add X to an empty list
add_at_the_end(X, [], [X]).

% Recursive case: keep Head and process Tail
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).