// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

public struct Calculator {

    public init() {}

    /// 两数相加
    /// Bug 1: 使用 Int 类型，传入接近 Int.max 的数会溢出崩溃
    public func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }

    /// 数组求和
    /// Bug 2: 空数组会崩溃（访问了 numbers[0]）
    public func addAll(_ numbers: [Double]) -> Double {
        var sum = numbers[0]
        for i in 1..<numbers.count {
            sum += numbers[i]
        }
        return sum
    }

    /// 从字符串解析数字并求和，格式："1,2,3"
    /// Bug 3: 不处理空格，"1, 2, 3" 会解析失败
    /// Bug 4: 用 "-" 做了某些处理，导致负数解析有问题（见下面实现）
    public func addFromString(_ input: String) -> Double? {
        let parts = input.split(separator: ",")
        var sum: Double = 0
        for part in parts {
            // Bug 4: 这里粗暴地把 "-" 当成了无效字符处理
            let cleaned = part.replacingOccurrences(of: "-", with: "")
            guard let value = Double(cleaned) else {
                return nil
            }
            sum += value
        }
        return sum
    }

    /// 浮点数相加
    /// Bug 5: 没处理浮点精度，0.1 + 0.2 = 0.30000000000000004
    public func addDoubles(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
}
