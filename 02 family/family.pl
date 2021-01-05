/**
 * @Author Dan Zhang
 * @blog: http://fens.me
 * @link: http://blog.fens.me/prolog-family/
 */ 

% cd("C:/work/prolog").
% [family].

% female: a,c,i,k,m,e,g,o
% male:   b,d,j,l,n,f,h,p
female(a).
female(c).
female(i).
female(k).
female(m).
female(e).
female(g).
female(o).
male(b).
male(d).
male(j).
male(l).
male(n).
male(f).
male(h).
male(p).

% married
married(a,b).
married(c,d).
married(i,j).
married(e,f).
married(o,p).


% parent
parent(a,d).
parent(a,j).
parent(b,d).
parent(c,m).
parent(c,n).
parent(d,m).
parent(d,n).
parent(d,g).
parent(e,g).
parent(e,h).
parent(f,h).
parent(g,o).
parent(i,k).
parent(i,l).
parent(j,k).
parent(j,l).


% 问题1：a是谁的家长
% parent(a,Who).

% 问题2：d是谁的孩子
% parent(Who,d).

child(X,Y) :- parent(Y,X).

% child(d,Who).


% 问题3：g的爸爸是谁？
% parent(X,g),male(X).

mother(X,Y) :- parent(X,Y),female(X).
father(X,Y) :- parent(X,Y),male(X).

% father(Who,g).
% mother(Who,g).

% 问题4：e和f结婚了吗？
% married(e,f).
% married(f,e).
married(X,Y) :-  married(Y,X).

% married(f,e).

% 问题5：谁是兄弟，谁是姐妹？

% sister,brother
sister(X,Y) :- parent(Z,X),parent(Z,Y),female(X),female(Y), \+ X=Y.
brother(X,Y) :- parent(Z,X),parent(Z,Y),male(X),male(Y), \+ X=Y.

% sister(X,Y).
% brother(X,Y).

% 问题6：祖父母，姥姥姥爷，爷爷奶奶

grandparent(X,Y) :- parent(X,Z),parent(Z,Y).
laolao_laoye(Y,X) :- mother(Z,X),parent(Y,Z).
yeye_nainai(Y,X) :- father(Z,X),parent(Y,Z).

% grandparent(Y,o).   % o的父母的父母
% yeye_nainai(Y,n).   % k的爷爷和奶奶
% laolao_laoye(Y,o).  % o的姥姥和姥爷
