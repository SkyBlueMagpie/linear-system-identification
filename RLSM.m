function [theta2,P2] = RLSM(theta1,P1,phi,zN)
%最小二乘递推算法
%phi是由[z(N),z(N-1),...,z(N+1-n),u(N+1),...,u(N+1-n)]组成的列向量
%zN是当前输出
%其余参数均为列向量
gamma2=1/(1+phi'*P1*phi);
K2=gamma2*P1*phi;
P2=P1-K2*phi'*P1;
err=zN-phi'*theta1;
%P2=P1-(P1*phi*phi'*P1)/(1+phi'*P1*phi);
theta2=theta1+K2*err;
%theta2=theta1+P1*phi/(1+phi'*P1*phi)*err;
end

