//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

//控制语句
//For
let interestingNumbers:[String:[Int]] = [
    "prime":[1,3,4,5],
    "square":[425,532,688]
]



var largest = 0
for (kind,numbers) in interestingNumbers {
    if kind == "prime" {
        for number in numbers {
            numbers.index(of: number)//获取数组索引
            print(number)
            //let a = number as? String//强转类型
//            guard let realla = a else {//GuardFangs
//                return
//            }
    
            print("prime分类中第\(numbers.startIndex)个元素是\(number)")
            if number > largest {
                largest = number
            }
        }
    }
}
print("最大数字是\(largest)")
//[问题1:for循环中any类型数据如何转int?]

//While循环

var targetnum = 2
while targetnum < 100 {//条件顶部
    targetnum = targetnum * 2
}
print(targetnum)

var m = 4
repeat{//Repeat关键字
    m = m * 2
}while m < 100 //条件顶部
print(m)

//循环范围
// ..< 表示范围
// ..< 范围不包含上边界
// 如果要包含上边界 采用 0 ... 4
var total = 0
for i in 0..<4{
    total += i
}
print(total)





//函数和闭包
func displayGreetValue(name:String?,address:String?) -> String{
    let greetStr:String? = "withoure any greet value"
    if let tempName = name, let tempAddress = address {
        print("hell \(tempName) you are in \(tempAddress)")
    }
    return greetStr!
}
//[问题2:if语句写一个并行条件采用, 还是&& 还是&?]
[displayGreetValue(name: "chenkai", address: "beijing")]






//函数可选参数[参数默认值]
func displayGreetWithDefault(name:String = "admin",location:String) -> String{
    print("hi \(name) you are in greet function")
    return ""
}

var username = "chenkai"
[displayGreetValue(name: username, address: "beijing")]
[displayGreetWithDefault(location: "shanghai")]//默认值[name变成了函数的可选参数，始终存在一个默认值]





//函数多个返回值
func calculateGroupStatus(scores:[Int]) ->(width:Int,height:Int,maxRange:Int){
    let width = scores[0]
    let height = scores[0]
    var maxRange = 0
    
    for score in scores {
        maxRange += score
    }
    
    return(width,height,maxRange)
}

let multiValue = calculateGroupStatus(scores: [12,45,78,63])//返回值multiValue


struct AAA{
    let name:String
}
let a = AAA(name: "1111")



print(multiValue.height)
print(multiValue.width)
print(multiValue.maxRange)

//[问题3：函数返回多个值multiValue是对象还是结构体?]



































