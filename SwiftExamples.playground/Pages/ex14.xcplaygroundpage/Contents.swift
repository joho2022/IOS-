//: [Previous](@previous)

import Foundation

//문자열 관련 함수들

//Swift : String
//NS류(Objective-C) : NSString

//NSString을 String으로 변환해서 사용하면 됨!
let myNSString : NSString = "대한민국"
let mySwiftString : String = String(myNSString)

//String을 NSString으로 변환할때
let againNSString: NSString = NSString(string: mySwiftString)

//문자열 길이
var myString: String = "Swift Programming!"
myString.count

// 문자열 비교 ==
let myString2 = "  Obj-C Programming!"
if myString == myString2 {
    print("같음")
} else {
    print("틀림")
}

// 문자열 연결 +
print(myString + myString2)
print(myString.appending(myString2))

//문자열에서 문자 한개 가져오기
//myString[0] // 배열처럼 인덱스로 접근 불가
let index = myString.index( myString.startIndex, offsetBy: 0)
myString[index]

myString[myString.startIndex]

let index2 = myString.index(myString.endIndex, offsetBy: -1)
myString[index2]



//문자열 전체 순환
for ch in myString {
    print(ch)
}

//문자열 뒤에 문자열 추가하기
var myString3 = "tom"
myString3.insert("!", at: myString3.endIndex)
//맨 앞에 추가하기
myString3.insert("@", at: myString3.startIndex)

//문자열 전부 삭제
var myString4 = "Swift Programming~"
myString4.removeAll()
myString4 = ""

//문자열 일부 삭제
var myString5 = "Swift Programming~"
let result = myString5.removeFirst()
myString5

let removeIndex = myString5.index(myString5.startIndex, offsetBy: 3)
myString5.remove(at: removeIndex)
myString5

//문자열을 포함하고 있는가? true / false
var myString6 = "Swift Programming~"
if myString6.contains("Swift") {
    print("Swift 포함함")
} else {
    print("Swift 포함안함")
}

if let range = myString6.range(of: "Swift") {
    print("Swift 포함함") //range가 nil이 아님
}

// 문자열 분리
let myString7 = "tom,hana,joy"
let arrayStr : [Substring] = myString7.split(separator: ",")
for str in arrayStr {
    print (str)
}
