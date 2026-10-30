% Shopping Program - Lab 7

% Start the program with five items
start :-
    Basket = [coffee, milk, chocolate, apple, juice],
    menu(Basket).

% Display the shopping menu
menu(Basket) :-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. exit.'),
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    action(Choice, Basket).

% Display all items
action(d, Basket) :-
    display_items(Basket),
    menu(Basket).

% Add a new item
action(a, Basket) :-
    write('Enter the item you want to add: '),
    read(Item),
    append(Basket, [Item], NewBasket),
    writeln('The item has been added'),
    menu(NewBasket).

% Exit the program
action(e, _) :-
    writeln('Goodbye!').

% Handle an invalid choice
action(_, Basket) :-
    writeln('Invalid choice. Try again.'),
    menu(Basket).

% Base case: empty list
display_items([]).

% Recursive case: print head, then tail
display_items([Head|Tail]) :-
    writeln(Head),
    display_items(Tail).