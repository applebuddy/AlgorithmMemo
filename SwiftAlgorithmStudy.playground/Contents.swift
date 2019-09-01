import UIKit

////// MARK:- SWIFT ALGORITHM CHALLENGE STUDY

//// MARK: - Challenge 1
/// 본 문자열 내의 중복문자가 있는지 확인하라

// var strDic = Set<Character>()
// var flag = true
//
func challenge0(_ input: String) -> Bool {
    return (input.count == Set(input).count)
}

//
// func challenge1(_ input: String) -> Bool {
//
//    for char in input {
//        if strDic.contains(char) == false {
//            strDic.insert(char)
//        } else {
//            return false
//        }
//    }
//    return true
// }
//
print(challenge0("as"))

//// MARK: - Challenge 2
///// 본 문자열과 reversed 문자열이 동일한지 확인하라
//
// func challenge3(_ input: String) -> Bool {
//    return String(input.lowercased()) == String(input.lowercased().reversed())
// }
//
// print(challenge3("Rats live on no evil star"))

//// MARK: - Challenge 3
//
// var strDic = [Character:Int]()
// var strDic2 = [Character:Int]()
//
//
// func challenge4(input: String, input2: String) -> Bool {
//    let str = input.replacingOccurrences(of: " ", with: "").sorted()
//    let str2 = input2.replacingOccurrences(of: " ", with: "").sorted()
//    print(str)
//    print(str2)
//    return str == str2
// }
//
////✭ component 구분자 + separated + joined() 를 사용할 수도 있다.
//// remove를 통한 공백 제거 후 sorted()
// print(challenge4(input: "a1b2", input2: "1a b2"))

// let str = "asd"
// print(str.fuzzyContains(input: "asd"))

//// 첫번째 방법
// extension String {
//    func fuzzyContains(input: String) -> Bool {
//        return self.lowercased().range(of: input.lowercased()) != nil
//    }
// }

//// 두번째 방법
// extension String {
//    func fuzzyContains(input: String) -> Bool {
//
//                let mStr = Array(self.lowercased()) // 접근한 String
//                let lowercasedStr = input.lowercased()
//                var index: String.Index
//
//                for char in mStr {
//                    var index = char == mStr[index] ? mStr.index(after: index) : mStr.startIndex
//
//                }
//
//        if index == str.endIndex {
//            return true
//        }
//
//        return false
//    }
// }

//// MARK: - Challenge 5

//// 1번째 방법
// print(verifyString(char: "i", str2: "Hacking With Swift"))
// func verifyString(char: Character, str2: String) -> Int {
//    var count = 0
//    for ch in str2 {
//        if char == ch {
//            count += 1
//        }
//    }
//    return count
// }
//
// func verifyString(char: Character, str2: String) -> Int {
//    var count = 0
//
//    return str2.characters.reduce(0) {
//        $0 == count ? $0 + 1 : $0
//    }
// }

//////// MARK: - Challenge 6
//// ** 중복된 문자열은 하나씩만 출력하시오. **
// var str = "Hello, playground"
//// var dict = [Character:Bool]()
// var setData = Set<Character>()
// func checkDuplicate(string: String) -> String {
//    //    string.forEach { (char) in
//    //        dict[char] = false
//    //    }
//    //
//    //    var ansString: String = ""
//    //    string.forEach { (char) in
//    //        guard let chk = dict[char] else { return }
//    //        if !chk {
//    //            dict[char] = true
//    //            ansString.append(char)
//    //        }
//    //    }
//
//    return string.filter { (char) -> Bool in
//        if setData.contains(char) {
//            return false
//        } else {
//            setData.insert(char)
//            return true
//        }
//    }
// }
//
//// ✔︎ contains를 활용한 문제 풀이 가능하다.
//
// print(checkDuplicate(string: "Mississippi"))
//
// func challenge6a(string: String) -> String {
//    let array = string.map { String($0) }
//    let set = NSOrderedSet(array: array)
//    let letters = Array(set) as! [String]
//    return letters.joined() // 빈칸없는 String으로 정리한 뒤 출력 -> 정답!
// }
//
// func challenge6c(string: String) -> String {
//    var used = [Character: Bool]()
//
//    let result = string.filter {
//        used.updateValue(true, forKey: $0) == nil
//    }
//
//    return result
// }

////// MARK: - Challenge 7 **
///// 문자열 내 스페이스공간을 최대 하나로 응축시켜라
//
// func condenseString(str: String) -> String {
//    var flag: Bool = false
//    var ans = Array(str)
//
//    var index = 0
//    while true {
//        if index >= ans.count { break }
//        if ans[index] == " " {
//            if flag {
//                ans.remove(at: index)
//                index -= 1
//
//            } else {
//                flag = true
//            }
//
//        } else {
//            flag = false
//        }
//        index += 1
//    }
//
//    return String(ans)
// }
//
// print("\(condenseString(str: "s        ad    asd     jqw dioq"))")

//////// MARK: - Challenge 8
//// **문자열이 회전 시 일치하는 경우가 있는지 판별하시오.**
//// CASE 1) * 문자열을 탐색하며 비교값과 문자가 동일하면 해당 문자 기준 앞 뒤를 비교한다.
// func isRotatable(first: String, second: String) -> Bool {
//    let char = first[first.startIndex]
//    var endIndexOfFirst = first.endIndex
//
//    for index in second.indices {
//        if char == second[index] {
//            if first[..<endIndexOfFirst] == second[index ..< second.endIndex], first[endIndexOfFirst...] == second[..<index] {
//                return true
//            }
//        }
//        endIndexOfFirst = first.index(before: endIndexOfFirst)
//    }
//    return false
// }
//
// print(isRotatable(first: "asdfg", second: "gasdf"))
//
//// CASE 2) * 문자열 2개를 합한 뒤 contains 사용하는 방법...
// func isRotatable2(first: String, second: String) -> Bool {
//    guard first.count == second.count else { return false }
//    let combined = first + first
//    return combined.contains(second)
// }
//
//// 1: asdfg <-> gasdf
// print(isRotatable2(first: "asdfg", second: "gasdf"))

////////// MARK: - Challenge 10
// * 문자열의 자음, 모음 갯수를 각각 출력하라
// func printVowelAndConsonants(str: String) -> (Int,Int) {
//    let chkArr = str.lowercased().components(separatedBy: .whitespaces).joined()
//    var answer: (Int,Int) = (0,0)
//    for char in chkArr {
//        if char == "a" || char == "e" || char == "i" || char == "o" || char == "u" {
//            answer.0 += 1
//        } else {
//            answer.1 += 1
//        }
//    }
//    return answer
// }
//
///// 1) aeiou, ~~~~ 를 String 명시 후 contains 사용방법
///// 2) 정규표현식을 사용하는 방법
///// 3) rangeOfCharacter의 활용
//
// print("\(printVowelAndConsonants(str: "Swift Coding Challenges"))")
// print("\(printVowelAndConsonants(str: "Mississippi"))")

////////// MARK: - Challenge 11
// * 4개 이상 문자가 틀리면 false, 아니면 true를 리턴하라
func checkString(str: String, str2: String) -> Bool {
    let strArray = Array(str)
    let str2Array = Array(str2)
    if strArray.count != str2Array.count { return false }
    var count = 0

    for idx in str2Array.indices {
        if strArray[idx] != str2Array[idx] {
            count += 1
            if count > 3 {
                return false
            }
        }
    }
    return true
}

print(checkString(str: "Clamp", str2: "Cramp"))
print(checkString(str: "Clamp", str2: "Crams"))
print(checkString(str: "Clamp", str2: "Grams"))
print(checkString(str: "Clamp", str2: "Grans"))
print(checkString(str: "Clamp", str2: "Clam"))
print(checkString(str: "Clamp", str2: "maple"))
