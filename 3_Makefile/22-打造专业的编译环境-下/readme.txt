解决的问题
1.编译路径为绝对路径问题
2.解决makefile重复问题
    模块和工程makfile共用的配置
        cmd-cfg.mk
    模块makefile拆分
        mod-cfg.mk  : 定义可能改变的变量
        mod-rule.mk : 定义相对稳定的变量和规则
    工程makefile拆分
        pro-cfg.mk  : 定义项目变量以及编译路径变量等
        pro-rule.mk : 定义其他变量和规则

存在的问题
1.模块不能单独编译


