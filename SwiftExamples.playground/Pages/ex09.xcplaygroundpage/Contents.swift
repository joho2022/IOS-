//: [Previous](@previous)

import Foundation
import UIKit

// switch문
// 형식
// switch 정수형변수 {
//   case 정수값:
//      실행문1
//   case 정수값:
//      실행문2
//   default:
//      실행문3
// }


var i = 10

switch i {
case 10:
    print("10입니다.")
case 20:
    print("20입니다.")
default:
    print("그외의 수입니다.")
}

// Swift에서 랜덤값(임의의 수)를 발생시키는 방법
// 0~99까지의 임의의 정수를 반환함.
//let randomUInt32: UInt32 = arc4random_uniform(100)
// UInt32를 Int로 형변환하기
//let randomInt = Int( randomUInt32 )

//연습문제3 - DM으로 제출
//60부터 100까지의 임의의 정수를 발생시키고,
//switch문을 이용하여 아래와 같이 출력하시오.
// 60점대 : 60~69점이면 "60점대입니다." 출력하시오
// 70점대 :
// 80점대 :
// 90점대 :
// 100점대 : "만점입니다!"

// 0부터 40까지 + 60 = 60~100까지
// let score = arc4random_uniform(41) + 60

let score = Int.random(in: 60...100)
let range = score / 10

switch range {
case 6 :
    print("60점대입니다.")
    
case 7 :
    print("70점대입니다.")
    
case 8 :
    print("80점대입니다.")
    
case 9 :
    print("90점대입니다.")
    
case 10 :
    print("만점입니다!")
    
default :
    print("그 외의 수입니다.")
    
}
