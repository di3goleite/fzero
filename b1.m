f=@(x)x.^3;
a=-1;
b=2;
err=1e-5;
itermax=1000;

e=b-a;
iter=0;
fa=f(a);

while( e > err )
  iter = iter + 1;
  x = 0.5 * ( b + a );
  e = abs(b - x);
  fx = f(x);
  if( fx == 0 )
    break;
  elseif( fx * fa > 0 )
    a = x;
    fa = fx;
  else
    b = x;
  end
  if( iter == itermax)
    break;
  end	
end

printf("it: %d\n", iter);
printf("x: %d\n", x);