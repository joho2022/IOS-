//: [Previous](@previous)

import Foundation

//조건문 if문(80%) switch문(20% - 비교대상이 정수형)
//    : 선택적인 수행이 가능하도록 한다.

// if문의 4가지 형식
//1. 단일 if문
//  if 조건식(비교, 논리연산자) {
//     참일때 수행하는 수행문
//   }
if true {
    print("참입니다.")
}

if false {
    print("참입니다.2")
}
print("여기입니다.")


//2. if else문
if false {
    print("참입니다.3")
} else {
    print("거짓입니다.")
}

//3. if else if문
if false {
    print("조건1이 참입니다.4")
} else if false {
    print("조건1이 거짓이고 조건2가 참입니다.")
} else {
    print("조건1과 조건2가 모두 거짓입니다.")
}

//4. 중첩(이중) if문 (if문 안에 if문)
if true {
    print("조건1이 참입니다.")
    if false {
        print("조건1이 참이고 조건2도 참입니다.")
        if true {
            print("조건1,2,3 모두 참입니다.")
        }
    } else {
        print("조건 1이 참이고 조건2는 거짓입니다.")
    }
}

//단일 if문
let a = 10
let b = 20
if a < b {
    print("a가 b보다 작습니다.")
}

//if else문
if a > b {
    print("a가 b보다 큽니다.")
} else {
    print("a가 b보다 같거나 작습니다.")
}

//if else if문
if a > b {
    print("a가 b보다 큽니다.")
} else if a < b {
    print("a가 b보다 작습니다.")
} else {
    print("a와 b가 같습니다.")
}

// 중첩 if문
if a < 20 {
    //a <= 19
    if a > 15 {
        // a >= 6
        print("a는 20보다 작고, 15보다 큽니다.")
        
    } else if a > 12 {
        // 11 <= a <= 19
        print("a는 20보다 작고, 12보다 큽니다.")
        
    } else {
        print("a는 20보다 작고, 12이하 입니다.")
        
    }
}

//연습문제 2 - 디스코드 DM으로 답안을 제출

// i변수에  100을 담고, j변수에 20을 담고,
// 1. i변수가 10의 배수인가를 true/ false로 출력하시오
// 2. i / j 연산할 때 10과 같은지 true/ false로 출력하시오
// 3. i와 j를 비교해서 큰수를 출력하시오

var i = 100
var j = 20

if i % 10 == 0 {
    print("true1")
} else {
    print("false1")
}

if i / j == 10 {
    print("true2")
} else {
    print("false2")
}

if i > j {
    print("큰 수는 \(i)입니다.")
} else if  i < j {
    print("큰 수는 \(j)입니다.")
} else {
    print("i와 j가 같습니다.")
}

