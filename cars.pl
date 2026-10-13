% ARTI 303 - Lab 6 - Prolog Programming


% ---- facts: car(Model, Price, Age, Colour, Mileage) -------------
car(chrysler, 130000, 3, red,   12000).
car(ford,      90000, 4, gray,  25000).
car(datsun,    80000, 1, red,   30000).

truck(ford,    80000, 6, blue,   8000).
truck(datsun,  50000, 5, orange,20000).
truck(toyota,  25000, 2, black, 25000).

can_buy(Cost) :-
    car(Model, C1, _, _, _),
    C1 < Cost,
    write('With '), write(C1),
    write(' you can purchase the car '), write(Model), nl.

can_buy(Cost) :-
    truck(Model, C2, _, _, _),
    C2 < Cost,
    write('With '), write(C2),
    write(' you can purchase the truck '), write(Model), nl.

% =================================================================
% LAB TASK 1 - MODEL ANSWER  (also consider the colour)

% Rule for matching cars by cost and colour
can_buy(Cost, TargetColour) :-
    car(Model, Price, _, TargetColour, _),
    Price < Cost,
    write('With '), write(Price),
    write(' you can purchase the car '), write(Model), nl.

% Rule for matching trucks by cost and colour
can_buy(Cost, TargetColour) :-
    truck(Model, Price, _, TargetColour, _),
    Price < Cost,
    write('With '), write(Price),
    write(' you can purchase the truck '), write(Model), nl.

% =================================================================
% test


% 48 ?- consult(['c:/Users/goshq/Downloads/cars.pl']).
% true.

% 49 ?- can_buy(100000, gray).
% With 90000 you can purchase the car ford
% true .

% 50 ?- can_buy(100000, red).
% With 80000 you can purchase the car datsun
% true .

% 51 ?- can_buy(90000, blue).
% With 80000 you can purchase the truck ford
% true.

% 52 ?- can_buy(60000, orange).
% With 50000 you can purchase the truck datsun
% true.
