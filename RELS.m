function [theta2,P2,omega] = RELS(theta1,P1,phi,zN)
%递推增广最小二乘
%y(k)+a1y(k-1)+...+any(k-n)=b0u(k)+b1u(k-1)+...+bnu(k-n)+w(k)+c1w(k-1)+...+cnw(k-n)
%theta'=[a1,...,an,b0,...,bn,...,c1,...,cn]
%phi'=[-z(k-1),...,-z(k-n),u(k),...,u(k-n),w(k-1),...,w(k-n)]
%zN当前输出
K2=P1*phi/(1+phi'*P1*phi);
P2=P1-K2*phi'*P1;
theta2=theta1+K2*(zN-phi'*theta1);
omega=zN-phi'*theta2;
end

