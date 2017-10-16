syms x
f(x) = log(x+1)
f1(x) = diff(f(x))
f2(x) = diff(f(x),2)
f3(x) = diff(f(x),3)
f4(x) = diff(f(x),4)

x0 = 0

f(x0)
f1(x0)
f2(x0)
f3(x0)
f4(x0)
taylor(f(x),x,0)
