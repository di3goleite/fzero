function bisection(f, a, b, err, max_its)
    e = 0;
    it = 0;
    fa = f(a);
    fb = f(b);
    xr = 0;

    while(it <= max_its)
        it = it + 1;
        printf("It: %d\n", it);
        last_xr = xr;
        xr = (a + b) / 2;
        fxr = f(xr);

        printf("-------------------\n");
        printf("fa: %d\n", fa);
        printf("fxr: %d\n", fxr);

        if(fxr == 0)
            break;
        elseif(fxr * fa < 0)
            printf("negativo\n");
            b = xr;
        else
            printf("positivo\n");
            a = xr;
            fa = fxr;
        endif

        e = abs((xr-last_xr)/xr);

        printf("xr: %d\n", xr);
        printf("lxr: %d\n", last_xr);
        printf("e: %d\n", e);
        printf("err: %d\n", err);
        printf("\n");

        if(e <= err)
            break;
        endif
    endwhile

    printf("====================\n");
    printf("xr: %d\n", xr);
endfunction