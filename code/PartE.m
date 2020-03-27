syms m1 m2 m l1 l2 g
%% A matrix 
A=[0 1 0 0 0 0; 0 0 -(m1*g)/m 0 -(m2*g)/m 0; 
    0 0 0 1 0 0;
    0 0 (-(m1*g)/(m*l1) -(g/l1)) 0 -(m2*g)/(m*l1) 0; 
    0 0 0 0 0 1; 
    0 0 -(m1*g)/(m*l2) 0 (-(m2*g)/(m*l2) -(g/l2)) 0 ];

%% Calculating C matric for different outputs 
C1=[1 0 0 0 0 0];                  % C matrxi for X as output 
C2=[1 0 0 0 0 0; 
    0 0 1 0 0 0;
    0 0 0 0 1 0];                  % C matrxi for X,theta1,theta2 as output 
C3=[0 0 1 0 0 0; 0 0 0 0 1 0];     % C matrxi for theta1,theta2 as output 
C4=[1 0 0 0 0 0; 0 0 0 0 1 0];     % C matrxi for X,theta2 as output 
%% Check for Observability of output - X 
co1=[C1 ;C1*A; C1*A^2; C1*A^3; C1*A^4; C1*A^5];
rank(co1)
%Thus it is observable since rank is 6. 
%% Check for Observability of output - X,theta1,theta2
co2=[C2 ;C2*A; C2*A^2; C2*A^3; C2*A^4; C2*A^5];
rank(co2)
%Thus it is observable since rank is 6. 

%% Check for Observability of output - theta1,theta2
co3=[C3 ;C3*A; C3*A^2; C3*A^3; C3*A^4; C3*A^5];
rank(co3)
%Thus it is not observable since rank is 4. 

%% Check for Observability of output - X,theta2
co4=[C4 ;C4*A; C4*A^2; C4*A^3; C4*A^4; C4*A^5];
rank(co4)
%Thus it is observable since rank is 6. 
