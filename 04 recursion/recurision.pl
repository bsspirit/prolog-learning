% 两个数比大小
bigger(X, Y, X) :- X>Y,!.
bigger(X, Y, Y) .

% bigger(3,5,X).
% bigger(5,3,X).

% 循环语句实现
loop(0).
loop(N) :- 
    N>0, write(N), nl,
    S is N-1, loop(S).  

% loop(3).


% factorial阶乘计算
factorial(0,1).   
factorial(N,F) :-    
    N>0,   
    N1 is N-1,   
    factorial(N1,F1),   
    F is N * F1.      

% factorial(3,X).

% hanoi游戏推理
hanoi(N) :- 
    move(N, left,  right, centre).

move(0, _, _, _) :- !.
move(N, A, B, C) :-
    M is N-1,
    move(M, A, C, B), print(A, B), move(M, C, B, A).

print(X, Y) :-
    write("move disc from "), write(X), write(" to ") ,write(Y),
    nl.    

% hanoi(4).     