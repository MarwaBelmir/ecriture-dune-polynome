go:-    write('Donnez la valeur de A ?'),
        read(A),nl,
        write('Donnez la valeur de B ?'),
        read(B),nl,
        write('Donnez la valeur de C ?'),
        read(C),nl,
        write('Le Polynome écrit : '),
        action(A),action(A,B),action(A,B,C).

action(A):-  ( A =  0 , Sg2 = ' ' , Coef2 = '' ,    Var2 = ' ' , Expo2 = '';
               A =  1 , Sg2 = ' ' , Coef2 = '' ,    Var2 = 'x' , Expo2 =  2;
               A >  1 , Sg2 = ' ' , Coef2 = A  ,    Var2 = 'x' , Expo2 =  2;
               A = -1 , Sg2 = '-' , Coef2 = '' ,    Var2 = 'x' , Expo2 =  2;
               A < -1 , Sg2 = '-' , abs(A,Coef2),   Var2 = 'x' , Expo2 =  2),
               write(Sg2),
               write(Coef2),
               write(Var2),
               write(Expo2).

action(A,B):-( B =  0 ,         Sg1 = ' ' , Coef1 ='',     Var1=' ';
               B =  1 , A = 0 , Sg1 = ' ' , Coef1 ='',     Var1='x';
               B =  1 , A\= 0,  Sg1 = '+' , Coef1 ='',     Var1='x';
               B >  1 , A=0,    Sg1 = ' ' , Coef1 =B,      Var1='x';
               B >  1 , A\=0,   Sg1 = '+' , Coef1 =B,      Var1='x';
               B = -1 ,         Sg1 = '-' , Coef1 ='',     Var1='x';
               B < -1 ,         Sg1 = '-' , abs(B,Coef1),  Var1='x'),
               write(Sg1),
               write(Coef1),
               write(Var1).

action(A,B,C):- (C = 0 , abs(A) + abs(B) = 0,Sg0 = ' ' , Coef0 = 0 ;
                 C = 0 , abs(A) + abs(B)\= 0,Sg0 = ' ' , Coef0 = '';
                 C > 0 , abs(A) + abs(B) = 0,Sg0 = ' ' , Coef0 = C ;
                 C > 0 , abs(A) + abs(B)\= 0,Sg0 = '+' , Coef0 = C ;
                 C < 0 , Sg0  = '-' , abs(C,Coef0)),
                write(Sg0),
                write(Coef0).
