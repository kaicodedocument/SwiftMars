//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Array常用用法
//转换数组数据类型
let array = [1,2,4,7,15,0,70]
let b = array.map { (index) -> String in
    print(index)
    return "\(index)"
}

//数组排序
let e = array.sorted { (a, b) -> Bool in
    return a > b
}
print(e)


//过滤数组中nil(返回值为可选类型)
let nullArray = [1,2,3,nil,4,5,6]
let c = nullArray.flatMap { (index) -> Int? in
    return index
}
print(c)





//函数[多个返回值]
func calculateGroupValue(scores:[Int]) ->(min:Int,max:Int,sum:Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }else if score < min{
            min = score
        }
        sum += score
    }
    return(min,max,sum)
}
let scoresArray = [45,2,15,996,30]
let value = calculateGroupValue(scores: scoresArray)
print("maxValue:\(value.max)")
print("minValue:\(value.min)")




//函数[多个可变参数]
func sumOf(numbers:Int...) -> Int{
    var sum = 0
    for singleNum in numbers {
        sum += singleNum
    }
    return sum
}
let sumFirst = sumOf(numbers: 1,20,22)
print(sumFirst)//第一种方式
print(sumOf())//第二个方式
//多个可变参数是否支持不同数据类型?
//答案是可以的， 采用数据类型Any，当然也可以传递Any？(可选类型)





//函数嵌套
func returnFifteen() -> Int{
    var y = 10
    func add(){
        y+=5
    }
    add()//调用函数
    return y
}
print(returnFifteen())



//函数作为返回值
func makeIncrementer() ->((Int) -> Int){
    func addSomeOn(number:Int) ->Int{
        return number + 10
    }
    return addSomeOn
}
var incrementer = makeIncrementer()
print(incrementer(7))
//makeIncrementer返回值是Addsomeon函数的签名



//函数作为参数传递
func hasAnyMatches(list:[Int],condition:(Int)->Bool) ->Bool{
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number:Int) -> Bool{
  return number < 10
}

var numbers = [12,8,90,3]
hasAnyMatches(list: numbers, condition: lessThanTen)


//闭包
let definePackage = numbers.map { (number:Int) -> Int in
    let result = number * 3
    return result
}
print(definePackage)


//对象和类

class Shape{
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var defShape = Shape()
defShape.numberOfSides = 5
print(defShape.simpleDescription())

class NamedShape{
    var numberOfSides:Int = 0
    var name:String = ""
    
    init(name:String) {
        self.name = name
    }
    
    deinit {
        print("析构函数")
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

//子类
//子类的定义方法是在它们的类名后面加上父类的名字，用冒号分割

class Square:NamedShape{
    var sideLength:Double = 0
    
    init(sideLength:Double,name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 1
    }
    
    func area() -> Double {
        return sideLength * sideLength;
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let testSquare = Square(sideLength:5.2,name:"my test")
testSquare.area()
testSquare.simpleDescription()


//属性构造器

class EquilaterTriangle:NamedShape{
    var sideLength:Double = 0.0
    
    init(sideLength:Double,name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter:Double{
        get{
            return 3.0 * sideLength;
        }
        set{
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length \(sideLength)."
    }
}

var triangle = EquilaterTriangle(sideLength:3.1,name:"Triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)


//属性构造
//使用willSet和didSet,在设置一个新值之前或者之后运行代码.
class TriangleAndSquare {
    var triangle: EquilaterTriangle{
        willSet{
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square{
        willSet{
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size:Double,name:String) {
        square = Square(sideLength:size,name:name)
        triangle = EquilaterTriangle(sideLength:size,name:name)
    }
}

var tempTriangle = TriangleAndSquare(size:10,name:"anther test")
print(tempTriangle.square.sideLength)
print(tempTriangle.triangle.sideLength)


//?操作符
//处理变量的可选值时，你可以在操作（比如方法、属性和子脚本）之前加?。
//如果?之前的值是nil，?后面的东西都会被忽略，并且整个表达式返回nil。
//否则，?之后的东西都会被运行。在这两种情况下，整个表达式的值也是一个可选值

let optionalSquare:Square? = Square(sideLength:2.5,name:"optional")
let sideLenghth = optionalSquare?.sideLength


//枚举和结构体（重新看）
//Swift 按照从 0 开始每次加 1 的方式为原始值进行赋值，
//也可以通过显式赋值进行改变
//也可以使用字符串或者浮点数作为枚举的原始值。
//使用rawValue属性来访问一个枚举成员的原始值
enum Rank:Int{
    case Ace = 1
    case Jack, Queen, King
    func simpleDescription() -> String {//枚举的方法?
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Queen
let aceRawValue = ace.rawValue


//协议和扩展

protocol ExampleProtocol{
    var simpleDescription:String { get }
    mutating func adjust()
}

class SimpleClass:ExampleProtocol{
    var simpleDescription:String = "A very simple class"
    var anotherProperty:Int = 69105
    func adjust() {
        simpleDescription += "Now 100% adjusted"
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
//在 class 中实现带有mutating方法的接口时，
//不用mutating进行修饰。
//因为对于class来说，类的成员变量和方法都是透明的，
//所以不必使用 mutating 来进行修饰

//结构体继承协议
struct SimpleStucture:ExampleProtocol{
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += "(adjusted)"
    }
}

var f = SimpleStucture()
f.adjust()
print(f.simpleDescription)
//SimpleStructure时候mutating关键字用来标记一个会修改结构体的方法.

//扩展继承协议
//Extension类似OC中Catalog
extension Int:ExampleProtocol{
    var simpleDescription:String{
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self + 42
    }
}


print(7.simpleDescription)
//extension来为现有的类型添加功能，
//比如新的方法和计算属性
let testExa:ExampleProtocol = a
print(testExa.simpleDescription)


//错误处理
enum PrinterError: Error {
    case OutOfPaper
    case NoToner
    case OnFire
}

func sendToPinter(printerName:String) throws -> String{
    if printerName == "Never Has Toner" {
        throw PrinterError.OutOfPaper
    }
    
    return "job sent"
}

//异常捕捉

do {
    let priinterResponse = try sendToPinter(printerName: "pangBo")
    print(priinterResponse)
} catch  {
    print(error)
}

//方式一
//一种方式是使用do-catch。
//在do代码块中，使用try来标记可以抛出错误的代码。
//在catch代码块中，除非你另外命名，否则错误会自动命名为error

//do {
//    let printerResponse = try sendToPinter(printerName: "gutengberg")
//    print(printerResponse)
//}catch PrinterError as PrinterError{
//    
//}catch{
//    
//}

//方式二
//使用多个catch块来处理特定的错误





//泛型

func repeatItem<Item>(item:Item, numbnerOfTimes:Int) ->[Item]{
    var result = [Item]()
    for _ in 0..<numbnerOfTimes{
        result.append(item)
    }
    return result;
}

repeatItem(item: "knock", numbnerOfTimes: 4)

//泛型枚举

enum OptionalValue<Wrapped>{
    case None
    case Some(Wrapped)
}

var possibleInteger:OptionalValue<Int> = .None
possibleInteger = .Some(100)

//func anyCommonElements<T:SequenceType, U:SequenceType Where T.Generator.Element>
















