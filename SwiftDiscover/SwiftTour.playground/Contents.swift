//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

let firstNum = 48
var secondNum = 42
secondNum = 36
print("firstnum:"+String(firstNum) + " secondNum:"+String(secondNum))//转换格式String(x)函数


let username:String = "chenkai"
var age:Float = 28.5
var customerBags:String = "Beijing Area"
if username == "chenkaid" {
    print(age)
}else{
    customerBags = "ShenZhen Area"
    print("Custmer "+username+" Change Bags Area:"+customerBags)
}

let deskCount:NSInteger = 32
var studutsClass:String = "Class two"
print(studutsClass + " has \(deskCount) studuts")//转换字符串格式\(x)方法


//Array
var usernameArray = ["chenkai","chunyuan","next","hanks"]
var indexThirdName = usernameArray[2]
print("index of third username is :" + indexThirdName)

usernameArray[0] = "ckdead"
print("change first username:"+usernameArray[0])

//Dictionary
var carCountDic = [
    "chenkai":12,
    "huchuanyuan":4,
    "next":12,
    "hanks":8
]

var ckcarNum = carCountDic["chenkai"]
print("chenkai have "+String(describing: ckcarNum)+" car")
carCountDic["next"] = Int("204")
print(carCountDic["next"] ?? 0)


//Create Empty Array and Dictionary

var array = [String]()
var dic = [String:Int]()
array = []//Empty Type
dic = [:]//Empty Type
array.append("firstElement")//Add
array.remove(at: 0)//Remove
array.insert("secondElement", at: 0)//Insert
array.append("change ground")
if array.count > 0 {//Count
    if array.contains("change ground") {//Contains
        print("contain elements")
    }
}
array.append(username)
print("last element:"+array.last!)

dic = carCountDic //Convet To New Dictionary
//dic.remove(at: DictionaryIndex<"chenkai",12>)
let indexValue = dic.index(forKey: "chenkai")
print(String(describing: indexValue))
dic.removeValue(forKey: "chenkai")


//控制流

let individualScores = [12,75,65,78,45]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    }else{
        teamScore + 1
    }
}

print("teamScore is:"+String(teamScore))



//可选值
//OptionalType
//Swift中默认non-optional非可选值类型，必须赋予这个变量一个非空的值

var customerName:String = "Jason Deff" //ok
//customerName = nil //error

func findStockCode(conpany:String) -> String?{
    if conpany == "Apple" {
        return "AAPL"
    }else if(conpany == "Google"){
        return "GooG"
    }
    return nil
}

//返回值可选类型String,意味着它要么是一个String要么是Nil
var notStockCode:String? = findStockCode(conpany: "facebook")
print(notStockCode ?? "Can't Find The StockCode")

//解包可选类型
//硬解包:
//将一个感叹号(!)加在可选类型变量名后面来解包这个可选类型的变量. 
//在Swift中这叫做硬解包. 即直接在可选类型后面加一个感叹号来表示它肯定有值.
var spiltCode:String? = findStockCode(conpany: "Tencent")
let text = "Stock Code -"
if (spiltCode != nil) {
    let message = text + spiltCode!
    print(message)
}

//可选绑定
//与硬解包不同
// 使用可选绑定来检查可选类型的变量有值还是没值. 如果有值, 解包它并且将值传递给一个常量或者变量
var optionaCode:String? = findStockCode(conpany: "Google")
let textChange = "Stock Code -"
if let tempStockCode = optionaCode {
    let message = textChange + tempStockCode
    print(message)
}


//可选链式调用
class Stock{
    var code:String?
    var price:Double?
}

func findStockCodeObj(company:String) -> Stock?{
    if company == "Apple" {
        let apple:Stock = Stock()
        apple.code = "1101"
        apple.price = 98.25
        return apple
    }else if(company == "Google"){
        let google:Stock = Stock()
        google.code = "1120"
        google.price = 102.258
        return google
    }
    return nil
}

//链式调用过程
if let targetStock = findStockCodeObj(company: "Apple") {
    if let targetPrice = targetStock.price {
        let totalCost = targetPrice * 100
        print("bug apple stock will cost u \(totalCost)")
    }
}

//简化链式调用过程
if let stockPrice = findStockCodeObj(company: "Apple")?.price{
    let totalCost = stockPrice * 100
    print("bug apple stock will cost u \(totalCost)")
}

//可选值声明另外两种方式
let stringValueFirst:String! = "ddd" //！确定变量有值
let stringValue:Optional<String> = "german"



var optionalString:String? = "hello"
print(optionalString == nil)
var optionalName:String? = "john deff"
var greeting = "hello"
if let name = optionalName {
    greeting = "hello, \(name)"
}
print(greeting)



