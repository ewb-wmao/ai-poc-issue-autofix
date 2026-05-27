import XCTest
@testable import Calculator

final class CalculatorTests: XCTestCase {

    let calc = Calculator()

    // MARK: - add(Int, Int)

    func testAddBasic() {
        XCTAssertEqual(calc.add(2, 3), 5)
    }

    func testAddNegative() {
        XCTAssertEqual(calc.add(-1, -2), -3)
    }

    // 故意缺失：大数溢出测试（Bug 1 修复时需要补上）

    // MARK: - addAll

    func testAddAllBasic() {
        XCTAssertEqual(calc.addAll([1.0, 2.0, 3.0]), 6.0)
    }

    func testAddAllEmptyArrayReturnsZero() {
        XCTAssertEqual(calc.addAll([]), 0.0)
    }

    // MARK: - addFromString

    func testAddFromStringBasic() {
        XCTAssertEqual(calc.addFromString("1,2,3"), 6.0)
    }

    func testAddFromStringSingleNegative() {
        XCTAssertEqual(calc.addFromString("-5"), -5.0)
    }

    func testAddFromStringMultipleNegatives() {
        XCTAssertEqual(calc.addFromString("-1,-2,-3"), -6.0)
    }

    func testAddFromStringMixedSigns() {
        XCTAssertEqual(calc.addFromString("1,-2,3"), 2.0)
    }

    // 故意缺失：带空格的输入测试（Bug 3）
    // 故意缺失：负数输入测试（Bug 4）

    // MARK: - addDoubles

    func testAddDoublesBasic() {
        XCTAssertEqual(calc.addDoubles(1.0, 2.0), 3.0)
    }

    // 故意缺失：浮点精度测试（Bug 5）
    // 比如 XCTAssertEqual(calc.addDoubles(0.1, 0.2), 0.3) 会失败
}
