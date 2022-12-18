import UIKit

//출력문 print
var myStr: String = "Swift Programming"

//print함수 : 콘솔(입출력)화면에 문자열을 출력한다.
//         : 줄바꿈(개행)이 들어가 있음.
//        : 자바, 코틀린(println와 같음)

print( "Swift Coding" ) //출력창을 표현하기 위한 방법
print(myStr)
debugPrint( myStr )
dump( myStr )

//클래스 선언
class Student {
    var name = "홍길동"
}

//클래스 객체 생성
var student = Student()
print( student )
print( student.name )
print( "---------")
debugPrint( "debugPrint : \(student)" )
dump( student )

//문자열 보간 : 문자열끼리 연결하기
var age = 30

//자바, 자바스크립트는 +로 문자열 연결
//print( "저의 나이는 " + age + "입니다")

print( "저의 나이는 \(age)입니다. ")
print( "저의 나이는",age,"입니다." ) // 공백이 생긴다~


