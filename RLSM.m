function [theta2,P2] = RLSM(theta1,P1,phi)
%Recursive least squares algorithm
%All vectors are column vectors
%phi is [z(N+1),z(N-1),...,z(N+1-n),u(N+1),...,u(N+1-s)],
%You may need to fill in the 0 for the start of the input/output signal(phi) yourself.
%Matrix P is used for recursion, you can assign an initial value of 1e6*eye at the beginning.
%theta is the parameter to be identified, described by the readme file.
gamma2=1/(1+phi(2:end)'*P1*phi(2:end));
K2=gamma2*P1*phi(2:end);
P2=P1-K2*phi(2:end)'*P1;
err=phi(1)-phi(2:end)'*theta1;
theta2=theta1+K2*err;
end

