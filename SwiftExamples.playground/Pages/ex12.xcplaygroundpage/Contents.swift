import Foundation

//ex12

//반복문 while
//형식
//초기화문
//while 조건식 {
// 수행문
// 증감문(마지막줄)
//}

//1부터 10까지 출력
var i = 1
while i<=10 {
    print(i)
    i += 1  //++연산자 대신에 +=
}

//repeat while문 : 적어도 한번은 수행되고 조건비교함.
//형식
//초기화문
//repeat {
//  실행문
//  증감문
//}while 조건식

//1부터 10까지 출력
i = 1
repeat {
    print(i)
    i += 1
}while i<=10
        
//연습문제5 - DM으로 제출
//1. while문을 이용하여 10부터 45까지 출력하시오.
i = 10
while i <= 45 {
    print(i)
    i += 1
}
//2. while문을 이용하여 10부터 -10까지 감소하는 i변수를
//   출력하시오.
i = 10
while i >= -10 {
    print(i)
    i -= 1
}
//3. while문을 이용하여 1부터 100까지의 수 중에서
//   3의 배수이면서 5의 배수인 수만 출력하시오.
i = 1
while i <= 100 {
    if i%3 == 0 && i%5 == 0 {
        print(i)
    }
    i += 1
}
//4. repeat while문을 이용하여
//   주사위 1~6까지 랜덤한 값을 5번 출력하시오.
i = 0
repeat {
    let randomInt = Int.random(in: 1...6)
    print(randomInt)
    i += 1
}while i<5

//연습문제6 - DM으로 제출
//1. 2부터 100까지 랜덤한 수(n)를 발생시키고,
//   n의 모든 약수를 출력하시오. 예) 10 : 1 2 5 10
//2. 1부터 100까지 소수만 출력하시오.
//   소수란 1과 자신으로만 나눠지는 수임. 즉 약수의 갯수가 2개
let n = Int.random(in: 2...100)
for i in 1...n {
    if( n % i == 0 ){
        print(i)
    }
}
print("---")
var divCount = 0
for i in 1...100 {
    
    for j in 1...i {
        if i % j == 0 {
            divCount += 1
        }
    }
    if divCount == 2 {
      print( i )
    }
    divCount = 0
}

//break문과 continue문
//break문 : 반복문을 탈출함.
//continue문 : 해당 회차(loop)를 중지하고, 다음 회차로 이동
for i in 1...10 {
    if i > 7 {
        break //i가 8이 되면 반복문을 탈출
    }
    if i%2 == 0 {
        continue //i가 짝수이면 다음회차로 넘김
    }
    print( i )
}
//이중 반복문 - 반복문 안에 반복문
for i in 2...9 {
    for j in 1...9 {
        print( "\(i) * \(j) = \(i*j)"  )
    }
}

//이중 반복문에서 레이블을 이용한 탈출
loop1:
for i in 1...10 {
    loop2:
    for j in 1...10 {
        print("i:\(i)")
        print("j:\(j)")
        if j > 5 {
            break loop1;
            //continue loop1;
        }
    }
}
