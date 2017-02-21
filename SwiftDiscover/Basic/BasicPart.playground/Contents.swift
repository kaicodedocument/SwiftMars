//: Playground - noun: a place where people can play

//Swift基础部分
//Start Date：2017年02月21日10:51:20
//End   Date: [unknow]

import UIKit

//常量和变量

let maxNumber = 10
var currentLoginAttempt = 0

//声明多个

var x = 12,y = 15,z = 200
let dfx = 20,dfy = 21,dfz = 200

//类型标注 语法:[变量名 + ：+ 空格 + 变量类型]

var welcomeMessage: String = "hello franklin"

//定义多个同类型变量

var red,green,yellow,blud:Double

//命名

let π = 3.1415926
let 你好 = "中文变量名"
let 🏷 = "表情变量名"

//命名规则:

//A：常量和变量名不能包含该数学符号（+ - x）,箭头,保留的Unicode码位
//let +def = ""

//B: 不能以数字开头，但可以在常量和变量名其他地方包含数字.
//let 45def = ""
let def45 = "define a 45 number string"

//C: 一旦你将常量或者变量声明为确定的类型，你就不能使用相同的名字再次进行声明
let def40: String = "define a 40 number string"
//let def40 = ""

//D：或者改变其存储的值的类型
//def40 = 450

//E：也不能将常量与变量进行互转
var def40Var = "define a 45 number string var"
def40Var = def40
//def40Var = 450
//def40Var = def40

//F：如果需要使用与Swift保留关键字相同的名称作为常量或者变量名，
//   可以使用反引号（`）将关键字包围的方式将其作为名字使用 (尽力避免)

def40Var = "define !"

//输出常量和变量

print(def40Var)

//print(_:separator:terminator:) 是一个用来输出一个或多个值到适当输出区的全局函数
//separator 和 terminator 参数具有默认值
//默认情况下，该函数通过添加换行符来结束当前行
//不想换行

print(def40Var, separator: "", terminator: "")
print("Max is great word for \(def40Var)")


//注释

//单行注释
/*
 多行注释
 创建时间:2017年02月21日11:39:08
 创建人 :chenkai
 */

//多行注释可以相互嵌套

/*
 第一多行注释
 /*第二个多行注释*/
 */


//分号

//不强制使用分号
//有一种情况下必须要用分号，即你打算在同一行内写多条独立的语句

var cat = "define a cat anmail"; print(cat)



//整数

let minValue = UInt8.min
let maxValue = UInt8.max


//浮点数
//Double 64位 （精度至少15位）
//Float 32位 （精度只有6位）

//类型检查 和类型推断
//推断浮点数的类型时，Swift 总是会选择 Double 而不是Float

let pi = 3.1415926

//如果表达式中同时出现了整数和浮点数，会被推断为 Double 类型

let anotherPi = 3 + 0.45928

//数值型字面量
//整数字面量可以被写作：
//
//一个十进制数，没有前缀
//一个二进制数，前缀是0b
//一个八进制数，前缀是0o
//一个十六进制数，前缀是0x


let decimailInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

//整数转换

//let cannotBeNegative： UInt8 = -1
//let tooBig: Int8 = Int8.max + 1

//只有类型相同才可以相互操作，尽量避免隐式转换，使代码意图清晰
let twoThousand: UInt16 = 2000
let one: UInt8 = 1
let twoThousanAndOne = twoThousand + UInt16(one)
print(twoThousanAndOne, separator: "", terminator: "")

//UInt16构造器
//并不能传入任意类型的值，只能传入 UInt16 内部有对应构造器的值
let doubleValue: Double = 3.15468454
let initivalValue: UInt16 = UInt16.init(doubleValue)
print(initivalValue)

//如果没有你想要类型，可以通过扩展方式实现


//整数和浮点数转换

let three = 3
let pointOneFour = 0.345875
let piDef = Double(three) + pointOneFour
print(piDef)

let integerPi = Int(piDef)

//类型别名

typealias AnduioSample = UInt16
var maxdfValue = AnduioSample.max
print(maxdfValue)




//----------------------------------------- 元组 ----------------------------------------------


//把多个值组合成一个复合值， 元组内的值可以是任意类型。
//定义一个类型为 (Int, String) 的元组
let http404Error = (404,"Page Not Found")

//访问

let (statusCode,message) = http404Error
print("status code is\(statusCode) and message is \(message)")


let groupValue = (1201,"澜山一号",12)
let (groupNum,groupName,groupPeoples) = groupValue
print("编号为\(groupNum) 车队\(groupName) 总共有 \(groupPeoples)人")

//只访问元祖部分属性，不需要访问属性通过占位符_替代

let (dfgroupNum,dfgroupName, _) = groupValue
print("部分属性 编号为\(dfgroupNum) 车队\(dfgroupName)")

//下标访问 (下标从0开始)

print("车队名称\(groupValue.1)")
print("车队人数\(groupValue.2)人")

//元素属性命名 (很好用啊)
//作为函数返回值时，元组非常有用
//元组在临时组织值的时候很有用，但是并不适合创建复杂的数据结构。
//如果你的数据结构并不是临时使用，请使用类或者结构体而不是元组

let dfGroupValue = (CarNum:1201,CarsName:"澜山一号",CarsPeopls:12)
print("车队编号: \(dfGroupValue.CarNum) 车队名称 \(dfGroupValue.CarsName)")




//----------------------------------------- 可选类型 ----------------------------------------------



let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber ?? 0)

let helloSay = "say Hello"
let convertSayHello = Int(helloSay)
print(convertSayHello)

//convertedNumber 被推测为类型 "Int?"， 或者类型 "optional Int"
//Int把String转Int构造器可能会失败，所以它返回其实Optonal Int,
//而不是一个 Int。一个可选的 Int 被写作 Int? 而不是 Int。
//问号暗示包含的值是可选类型，也就是说可能包含 Int 值也可能不包含值,也就是Nil。
//（不能包含其他任何值比如 Bool 值或者 String 值。只能是 Int 或者什么都没有。）



//nil

var serverResponseCode: Int? = 404
// serverResponseCode 包含一个可选的 Int 值 404
serverResponseCode = nil
//nil不能用于非可选的常量和变量。
//如果你的代码中有常量或者变量需要处理值缺失的情况，请把它们声明成对应的可选类型。

//如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为 nil：

var surveryAnswer: String?
print(surveryAnswer)


//Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中，
//nil 是一个指向不存在对象的指针。
//在 Swift 中，nil 不是指针——它是一个确定的值，用来表示值缺失。
//任何类型的可选状态都可以被设置为 nil，不只是对象类型。


//----------------------------------------- IF语句与强解析 ----------------------------------------------
//可选绑定
//可选绑定可以用在 if 和 while 语句中
//来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量


var formatChar: String? = "define temp string value"
if let tempChar = formatChar {
    print("FormatChar有值：\(formatChar)")
}

var formatNonChar: String?
if var tempNonChar = formatNonChar {
    print("有值")
}else{
    print("nothing")
}

//多个可选绑定

if let firstNum = Int("142"), let secondNum = Int("988"), firstNum < secondNum {
    print("done")
}

//多个可选绑定中，如果其中任何一个可选绑定值为nil或布尔条件语句返回为false，则不执行If语句中代码

if let firstTempNum = Int("chenkai"),let secondTempNum = Int("988"),firstTempNum < secondTempNum {
    print("excute me")
}else{
    print("Nothing")
}

//在 if 条件语句中使用常量和变量来创建一个可选绑定，仅在 if 语句的句中(body)中才能获取到值
//相反
//在 guard 语句中使用常量和变量来创建一个可选绑定，仅在 guard 语句外且在语句后才能获取到值
//Guard语句用法

func greet(perison: [String: String]){
    guard let name = perison["name"] else {
        return
    }
    print("hello \(name)")
    
    guard let location = perison["location"] else {
        print("i hope you have good weather")
        return
    }
    print("i hope you have good weather in \(location)")
}

greet(perison: ["name": "beijing"])

//Guard更像是吧否条件执行代码进行前置.
//可以Guard语句后获取Optional的值并操作它。
//一个guard语句总是有一个else从句，如果条件不为真则执行else从句中的代码。
//这个分支必须转移控制以退出guard语句出现的代码段。
//它可以用控制转移语句如return,break,continue或者throw做这件事，或者调用一个不返回的方法或函数



//隐式解析可选类型
//隐式解析可选类型主要被用在 Swift 中类的构造过程中
//一个隐式解析可选类型其实就是一个普通的可选类型，但是可以被当做非可选类型来使用
//并不需要每次都使用解析来获取可选值

//声明

let possibleString: String? = "An optional String"
//let unForcedString: String = possibleString 编译出错：可选类型赋值给非可选类型时，必须有明确的值

let forcedString: String = possibleString!
print("forcedString Value: \(possibleString)")

var accountName: String! = "chenkai"
let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString  // 不需要感叹号

//可以把隐式解析可选类型当做一个可以自动解析的可选类型。
//你要做的只是声明的时候把感叹号放到类型的结尾，而不是每次取值的可选名字的结尾

//如果你在隐式解析可选类型没有值的时候尝试取值，会触发运行时错误。
//和你在没有值的普通可选类型后面加一个惊叹号一样。
//如果你需要在变量的生命周期中判断是否是nil的话，请使用普通可选类型



//----------------------------------------- 错误处理 ----------------------------------------------
//将函数包裹在一个 do 语句中，任何被抛出的错误会被传播到提供的 catch 从句中


func canThrowAnError() throws{
    
}

do {
    try canThrowAnError()
    
} catch is Error {
    print("define group nil")
}


//----------------------------------------- 断言 ----------------------------------------------
//在某些情况下，如果值缺失或者值并不满足特定的条件，你的代码可能没办法继续执行。
//这时，你可以在你的代码中触发一个 断言（assertion） 来结束代码运行并通过调试来找到值缺失的原因

//断言会在运行时判断一个逻辑条件是否为 true。从字面意思来说，断言“断言”一个条件是否为真。
//你可以使用断言来保证在运行其他代码之前，某些重要的条件已经被满足。
//如果条件判断为 true，代码运行会继续进行；如果条件判断为 false，代码执行结束，你的应用被终止

let userAge = -3
//assert(userAge >= 0, "A person's age cannot be less than zero")

//如果 age 的值是负数，就像代码中那样，age >= 0 为 false，断言被触发，终止应用
//断言的适用情景：
//
//整数类型的下标索引被传入一个自定义下标实现，但是下标索引值可能太小或者太大。
//需要给函数传入一个值，但是非法的值可能导致函数不能正常执行。
//一个可选值现在是 nil，但是后面的代码运行需要一个非 nil 值。










