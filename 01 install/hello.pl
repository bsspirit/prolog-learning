/**
 * @Author Dan Zhang
 * @blog: http://fens.me
 * @link: http://blog.fens.me/prolog-install/
 */ 


% 文件路径

pwd.
cd('c:/work/prolog').
pwd.

% 帮助

help(append).
help(pwd).

% 输出

write("hello world").
write("hello world "),write("fens.me").
write("hello world "),nl,write("fens.me").

% 官方例子

[swi(demo/likes)].
likes(sam, X).

edit(likes).

likes(sam,dahl).
likes(sam,chop_suey).
likes(sam,curry).

listing(indian).

% 创建自定的命令

edit(file(abc)).
[abc].
hello

% 退出

halt.
