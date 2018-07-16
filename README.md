# shellpp

在写 shell 脚本时，本人碰到了几个认为很重要的问题：

* 一方面想要利用 ```source mod.sh``` 或者 ```. ./mod.sh``` 这样的语法把代码模块化，一方面又不希望生成很多的脚本放在用户的目录下。
* 写过的一些 shell 模块希望能够在多个项目中复用，但又不希望在多个项目中维护一份代码的多个副本。

因此想到利用类似 C 语言的宏的形如 ```#IMPORT mod.sh``` 这样的的语法形式，加上一个类似编译的”构建过程“，来解决这个问题。

一个简单的例子：

```
➜  shellpp git:(master) ✗ cat foo.sh
function foo() {
	echo "bar" "$@"
}

➜  shellpp git:(master) ✗ cat main.sh
#!/bin/sh

#IMPORT foo.sh

foo "$@"
➜  shellpp git:(master) ✗ ./spp --src=main.sh --out=out.sh
2018-07-16 22:10:07.N|I|SRC: main.sh
2018-07-16 22:10:07.N|I|OUT: out.sh
2018-07-16 22:10:07.N|I|INCS: /Users/lzx/Projects/go/src/github.com/lizixing/shellpp /Users/lzx/Projects/go/src/github.com/lizixing/shellpp/pkgs
2018-07-16 22:10:07.N|I|CLEAN_MIDDLE: Y
2018-07-16 22:10:07.N|I|MAX_STEPS: 0
2018-07-16 22:10:07.N|I|STEP[1] import package 'foo.sh' @ '/Users/lzx/Projects/go/src/github.com/lizixing/shellpp/foo.sh'
2018-07-16 22:10:07.N|I|output 'out.sh' finished!
➜  shellpp git:(master) ✗ cat out.sh
#!/bin/sh

### PKG foo.sh@/Users/lzx/Projects/go/src/github.com/lizixing/shellpp/foo.sh start
function foo() {
	echo "bar" "$@"
}


### PKG foo.sh@/Users/lzx/Projects/go/src/github.com/lizixing/shellpp/foo.sh end

foo "$@"
➜  shellpp git:(master) ✗ ./out.sh hello world
bar hello world
➜  shellpp git:(master) ✗
```

