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




















