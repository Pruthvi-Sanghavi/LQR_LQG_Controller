
syms m1 m2 m l1 l2 g


%% A matrix
A=[0 1 0 0 0 0; 0 0 -(m1*g)/m 0 -(m2*g)/m 0; 0 0 0 1 0 0;
    0 0 (-(m1*g)/(m*l1) -(g/l1)) 0 -(m2*g)/(m*l1) 0;
    0 0 0 0 0 1; 
    0 0 -(m1*g)/(m*l2) 0 (-(m2*g)/(m*l2) -(g/l2)) 0 ];


%% B matrix
B=[0; 1/m; 0; 1/(m*l1); 0; 1/(m*l2)];


%% Check for Controlability
co1=[B A*B A^2*B A^3*B A^4*B A^5*B] 
simplify(co1) 
rank(co1)
%The rank of the matrix is 6. 
%Thus we see that controllability decreases only
%when l1 = l2 by comparing rows for linear 
%independance.Thus the condition for it to be controllable is l1 
%cannot be equal to l2. This makes sense in physical 
%system as the pendulumms will collide if they have the same lenghth. 
