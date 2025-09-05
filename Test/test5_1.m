syms x(t)
simplify(dsolve('D2x + 3*Dx + 4*x = exp(5*t)*cos(6*t+7)', 'Dx(0)=1', 'x(0)=1'))