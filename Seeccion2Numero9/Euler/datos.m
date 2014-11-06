
%Datos iniciales
clear all
clc

close
x0=[1,1];
V0=[-0.7,-0.7];
h=0.1;
n=10
q1=-1.6e-19;
q2=1.6e-19;
q3=1.6e-19;
q= -1.6e-19;
m=9.1e-31;
A=[0,0];
B=[0,0];
%C=[0,0]
%[A;B ]
%aceleration(x0,[A; B;C],q,[q1 q2 q3],m);
%eulerParticulas(x0,V0,h,n,q1,q2,q,m,A,B);
%heunParticula(x0,V0,h,n,[q1 q2 q3],q,m,[A;B;C]);

aceleration(x0,[A; B],q,[q1 q2],m);
%eulerParticulas(x0,V0,h,n,q1,q2,q,m,A,B);
heunParticula(x0,V0,h,n,[q1 q2],q,m,[A;B]);
