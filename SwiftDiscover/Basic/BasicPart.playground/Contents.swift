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

//元组
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









