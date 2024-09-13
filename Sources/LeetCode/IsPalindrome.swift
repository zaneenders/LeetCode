// https://leetcode.com/problems/palindrome-number/
func isPalindrome(_ x: Int) -> Bool {
    if x >= 0 {
        let s = String(x)
        var l = 0
        var r = s.count - 1
        repeat {
            let left = s.index(s.startIndex, offsetBy: l)
            let right = s.index(s.startIndex, offsetBy: r)
            l += 1
            r -= 1
            if s[left] != s[right] {
                return false
            }
        } while l < r
        return true
    } else {
        return false
    }
}

func isPalindrome2(_ x: Int) -> Bool {
    if x >= 0 {
        var copy = x
        var reversed = 0
        repeat {
            reversed = reversed * 10
            reversed += copy % 10  // get right most number
            copy = copy / 10
        } while copy != 0
        return reversed == x
    } else {
        return false
    }
}
