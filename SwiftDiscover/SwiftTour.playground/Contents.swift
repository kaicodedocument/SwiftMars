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
var dic = [String:Float]()
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





