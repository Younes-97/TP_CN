function Tp_jouet(n)
    
    //on donne la précision 16 chiffres après la virgule
    format("e",16);
    
    //on génère la matrice A
    A=rand(n,n);
    disp("A=",A);
    //on génère le vecteur colonne xex
    
    xex=rand(n,1);
    disp("xex",xex);
    
    //on calcul b
    b=A*xex; 
    disp("b=",b);
    
    //calcul du x
    
    x=A\b;
    disp(x);

    

    //calcul d'erreur avant

    frelres=norm(x-xex)/norm(xex);

    disp(frelres);
    //calcul d'erreur arrière

    brelres=norm(b-A*x)/norm(b);

    disp(brelres);
    
    //calcul du conditionnement

    s=cond(A);

    //calcul du conditionnement * erreur arrière

    borns=cond(A)*brelres;
    
    disp("borns",borns);

endfunction



 
