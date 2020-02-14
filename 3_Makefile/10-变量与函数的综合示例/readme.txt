基本功能: 
1.将当前目录的源文件编译的执行文件放到target目录, 中间文件放到objs目录
2.通过条件判断,编译debug版和普通版
    反汇编:
        objdump -S hello-makefile.out
        objdump -S hello-makefile.out > file.txt
    普通编译: make
        反汇编后,均是汇编代码,不带任何信息
    debug版编译: make DEBUG:=true
        反汇编后,不但有汇编程序,还有汇编程序对应的源代码(调试信息)