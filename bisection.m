function bisection(f, a, b, err, max_its)
    e = 0;
    it = 0;
    fa = f(a);
    fb = f(b);
    xr = 0;
    last_xr = 0;

    while(it <= max_its)
        it = it + 1;
        printf("It: %d\n", it);
        xr = (a + b) / 2;
        fxr = f(xr);

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

            printf("E: %d\n", e);
            printf("Err: %d\n", err);
            if(e <= err)
               break;
            endif
        else
            last_xr = xr;
        endif
        printf("\n");
    endwhile

    printf("xr: %d\n", xr);
endfunction