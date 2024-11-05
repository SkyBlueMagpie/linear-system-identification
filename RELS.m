function [theta2,P2,omega] = RELS(theta1,P1,phi)
%Recursive extended least squares method
%y(k)+a1y(k-1)+...+any(k-n)=b0u(k)+b1u(k-1)+...+bsu(k-n)+w(k)+c1w(k-1)+...+cmw(k-n)
%theta'=[a1,...,an,b0,...,bn,...,c1,...,cn]
%phi'=[z(k),z(k-1),...,z(k-n),u(k),...,u(k-n),w(k-1),...,w(k-n)]
%You should add omega to vector phi's w(k).
K2=P1*phi(2:end)/(1+phi(2:end)'*P1*phi(2:end));
P2=P1-K2*phi(2:end)'*P1;
theta2=theta1+K2*(zN-phi(2:end)'*theta1);
omega=phi(1)-phi(2:end)'*theta2;
end

