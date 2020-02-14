1.  sed 正则表达式
    $ echo "main.o : main.c func.h" | sed 's,\(.*\)\.o[ :]*,objs/\1.o : ,g'
    
2. gcc -M : 包括系统文件在内的所有依赖文件
        $ gcc -M main.c
        main.o: main.c /usr/include/stdc-predef.h /usr/include/stdio.h \
         /usr/include/features.h /usr/include/x86_64-linux-gnu/sys/cdefs.h \
         /usr/include/x86_64-linux-gnu/bits/wordsize.h \
         /usr/include/x86_64-linux-gnu/gnu/stubs.h \
         /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
         /usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h \
         /usr/include/x86_64-linux-gnu/bits/types.h \
         /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/libio.h \
         /usr/include/_G_config.h /usr/include/wchar.h \
         /usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h \
         /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
         /usr/include/x86_64-linux-gnu/bits/sys_errlist.h func.h

    gcc -MM : 包括仅用户的依赖文件
        $ gcc -MM main.c
        main.o: main.c func.h
        
    gcc -MM -E: -E 告诉编译器仅做初步的解析就可以了,没必要做进一步的其他工作了(高效一点)
        $ gcc -MM -E main.c
        main.o: main.c func.h
        
3. 综合应用
        $ gcc -MM -E main.c | sed 's,\(.*\)\.o[ :]*,objs/\1.o : ,g'
        objs/main.o : main.c func.h
