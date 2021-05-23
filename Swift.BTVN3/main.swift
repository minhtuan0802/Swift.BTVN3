//
//  main.swift
//  Swift.BTVN3
//
//  Created by Ngô Minh Tuấn on 22/05/2021.
//

import Foundation

//1. Viết hàm trả về số ngày có trong 1 tháng.
//Lưu ý: Với tháng 2 có 29 ngày nếu là năm nhuận, 28 ngày nếu là năm không nhuận.

func month(a: Int, b: Int) {
    switch a {
    case 2:
        if (b % 4 == 0 && b % 100 != 0) || b % 400 == 0 {
            print("Tháng \(a) năm \(b) có 29 ngày")
        } else {
            print("Tháng \(a) năm \(b) có 28 ngày")
        }
    case 1,3,5,7,9,11:
        print("Tháng \(a) năm \(b) có 31 ngày")
    case 4,6,8,10,12:
        print("Tháng \(a) năm \(b) có 30 ngày")
    default:
        print("Không hợp lệ")
    }
}
month(a: 2, b: 2000)
//2. Tính tổng các chữ số trong 1 số nguyên dương.

func sumInt(a: UInt) {
    var sum = 0
    for i in "\(a)" {
        let number = (String(i) as NSString).integerValue
        sum += number
    }
    print(sum)
}
sumInt(a: 3113456)

//3. In ra một chuỗi, nếu chuỗi có độ dài lớn hơn 10 ký tự thì thực hiện cắt chuỗi lấy 10 ký tự và hiển thị phía sau là dấu ba chấm (10 kí tự + ...)
//Ví dụ: Tôi học lớ....

func string(a: String) {
    if a.count <= 10 {
        print(a)
    } else {
        print("\(a.prefix(10))...")
    }
}
string(a: "tôi là học sinh")

//4. Tìm số nhỏ nhất và lớn nhất trong mảng số nguyên.

func minMax(a: [Int]) -> (min: Int, max: Int) {
    var min = a[0]
    var max = a[0]
    for i in 0..<a.count {
        if a[i] <= min {
            min = a[i]
        }
        
        if a[i] >= max {
            max = a[i]
        }
    }
    return (min, max)
}

print(minMax(a: [1, 2, 4, 6, -3]))


//5. Tìm số lớn thứ 2 trong mảng số nguyên.

var max2 = [1, 3, 5, 2, 6]
max2.sort()
max2.reverse()
//for i in 1..<max2.count {
//    if max2[i] == max2[0] {
//        max2.remove(at: i)
//    }
//}

print(max2[1])

//6. In một chuỗi cho trước theo thứ tự ngược lại (Ví dụ: Hello in thành olleH)
func reverse(a: String) {
    var arr :[String] = []
    for i in a {
        arr.append(String(i))
    }
    arr.reverse()
    let StringReverse = arr.joined(separator: "")
    print(StringReverse)
}
reverse(a: "Hello")

//7. Viết chương trình vẽ một tam giác cân bằng các dấu * với chiều cao h (h > 1) cho trước.
//        *
//      * * *
//    * * * * *



//8*. Sắp xếp mảng số nguyên theo chiều tăng dần và giảm dần (không sử dụng hàm có sẵn).
//
//9*. Viết chương trình nhập vào một số nguyên dương không lớn hơn 10000, in ra màn hình chữ số lớn thứ nhì có trong số đó (ví dụ nhập n = 1356 in ra 5). Trong trường hợp không có số lớn thứ nhì, thì in ra số lớn nhất.

//func max(a: UInt) {
//    var arr : [Int] = []
//    for i in "\(a)" {
//        let number = (String(i) as NSString).integerValue
//        arr.append(number)
//        arr.sort()
//        arr.reverse()
//    }
//    for j in 0..<arr.count {
//        if arr[0] == arr[j] {
//            arr.remove(at: j)
//        }
//    }
//    print(arr)
//}
//max(a: 3113456)

//10*. Viết chương trình vẽ một chữ X bằng các dấu * với chiều cao h (chiều cao lớn hơn 0 và là số lẻ)
//
//    *   *
//
//     * *
//
//      *
//
//     * *
//
//    *   *

