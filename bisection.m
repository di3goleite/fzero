function [xr e it] = bisection(f, a, b, err, max_its)
    e = 0;
    it = 0;
    fa = f(a);
    fb = f(b);

    while(it <= max_its)
        it = it + 1;
        xr = (a + b) / 2;
        last_xr = 0;
        fxr = f(xr)

        if(fxr == 0)
            break;
        elseif(fxr * fa < 0)
            b = xr;
        else
            a = xr;
            fa = fxr;
        endif

        if(it > 1)
            e = abs((xr-last_xr)/xr);
            last_xr = xr;

            if(e <= err)
                break;
            endif
        else
            last_xr = xr;
        endif
    endwhile
endfunction