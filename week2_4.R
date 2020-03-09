# 任何符号需要有values 来binding后才有意义
# 具体binding的规则: when R tries to bind a value to a symbol.
# it searches through a series of enviroments to find the appropriate value
# the order is 1.search the global environment for a symbol name matching the one requested
# 2. search the namespaces of each of the packages on the search list(也是有顺序的).
# 所以，如果我们自己定义了一个函数lm(),那么调用时就会先调用自己定义的(因为自己定义的lm对会在global environment里)
# 如果我们用library()导入库，则库中的包也是在顺序2

# scoping rule is how R uses the search list to bind a value to a symbol
# lexical scoping rule 静态作用域
# 意味着，free variables的值将在环境中寻找（formal variable指函数明确给出值得自变量，即括号里的）
# 那么什么是环境？ 环境是 collection of symbol values pairs
# 如，x是symbol，3.14可能是它的values
# 环境有父环境和子环境
# a function+ an environment = a closure or funtion closure

make.power <- function(n){ #在程序pow中，n是free variable而不是formal variable
  pow <- function(x){ #但pow的环境就是make.power，在该环境中定义了n
    x^n
  }
  pow
}

cube <- make.power(3)
square <- make.power(2)
cube(3)
square(3)

ls(environment(cube))

get('n',environment(cube))

# 一个例子来说明静动态作用域的区别
y <- 10

f <- function(x){
  y <- 2
  y^2+g(x)
}
g <- function(x){
  x+y
}
#在动态作用域下，g函数是在call environment中寻找free variable y的
#在静态作用于下，g函数在where the functino was defined的环境中寻找y(此处g在global environ中定义)
#R语言是静态，所以y取10
#matlab只有静态变量和全局变量 好像没有作用域的概念
