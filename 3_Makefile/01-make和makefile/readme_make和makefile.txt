1. make 介绍
    make 是一个应用程序
    - 解析源程序之间的依赖关系
    - 根据依赖关系自动维护编译工作 (未改动的文件不会重复编译)
    - 执行宿主操作系统中的各种指令
    
2. makefile 介绍
    - 定义一些列的规则来指定源文件编译的先后顺序
    - 拥有特定的语法规则,支持函数定义和函数调用
    - 能够直接集成操作系统中的各种命令
    
3. make 和 makefile 之间的关系
    makefile 中的描述用于指导make程序如何完成工作;make 根据 makefile 中的规则执行命令,最后完成编译输出
    
4. 最简单的 makefile 示例
    hello:
        echo "hello makefile"
    目标    实现目标需要执行的命令
    
    注: 目标后的命令需要用Tab键('\t')隔开!
    
5. make程序的使用示例
    make -f make.txt hello
    功能说明:
    -f : 以hello关键字作为目标查找make.txt文件,并执行hello处的命令.
    
6. make 程序的简写实例
    make hello
    功能说明: 以hello关键字作为目标查找 makefile 或 Makefile 文件, 并执行hello处的命令.
    make
    功能说明:
    查找 makefile 或 Makefile 文件中最顶层目标,并执行最顶层目标的命令.