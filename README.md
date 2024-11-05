# linear-system-identification
The code uses least square method to realize linear system identification.
## Least Squares Method
For a simple discrete time linear system
$$z(k)=-a_{1} z(k-1)-a_{2} z(k-2)-...-a_{n} z(k-n)+b_{0} u(k)+b_{1} u(k-1)+...+b_{s} u(k-n)+\xi (k)$$

Where z is the output of the system, u is the input of the system, and $\xi$ is error.
We can identification the system use Least Squares Method, define

$$\theta=[a_{1}, a_{2}, ..., a_{n}, b_{0}, b_{1}, ..., b_{s}]^{T}$$

You can use LSM by RLSM.m, which is described by comments.
## Extended Least Squares method
For a simple discrete time linear system
$$z(k)=-a_{1} z(k-1)-...-a_{n} z(k-n)+b_{0} u(k)+b_{1} u(k-1)+...+b_{s} u(k-n)
+w(k)+c_{1} w(k-1)+...+c_{m} w(k-m)$$

$$\theta=[a_{1}, a_{2}, ..., a_{n}, b_{0}, b_{1}, ..., b_{s}, c_{1},..., c_{m}]^{T}$$

w is error, you should recode function RELS' output and pass the vector of w to the input parameter when used recursively.
You can use ELS by RWSM.m, which is described by comments.
