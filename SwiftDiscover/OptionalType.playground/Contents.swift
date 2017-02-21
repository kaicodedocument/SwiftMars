//: Playground - noun: a place where people can play

import UIKit

//可选类型
//Swift中的nil:表示任意类型的值缺失，是一个确定的值，要么是该类型的一个值要么什么都没有(即为nil)

class Person{
    var personName:String? = "HongKong"
    var personAge:Int? = 20
}

let status:Int? = 1
let defaultAddress:String? = "Beijing Dester"
var student:Person? //默认值为nil
print(student ?? Person())//Warn提示设置一个Default Value

//使用!强制解析
//！会把当前值强制解析成默认的可选类型
var defaultName:String? = "John Deff"
if defaultName != nil {
    print("your username is \(defaultName!)")//使用强转结果有区别
}else{
    print("can't find this user, please try later again")
}
//print("student:\(student!)")//强转提示错误，因为student默认值为nil 强制解析不行


//使用可选绑定获取可选类型的值(推荐用法)
//如果defaultAddress有值或强转类型成功，则将值赋给tempAddress使用, 正常执行语句块，否则不执行语句块代码.
if let tempAddress = defaultAddress {
   print("your package address is \(tempAddress)")
}

//隐式解析可选类型
var phoneNumber:Int64! = 15901465025


