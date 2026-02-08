//
//  MultipleMatrixTests.swift
//  MultipleMatrixTests
//
//  Created by Surya Rayala on 2/6/26.
//

import XCTest
@testable import MultipleMatrix

final class MultipleMatrixTests: XCTestCase {

    var objCollectionViewCell : CollectionViewCell!
    var testLabel: UILabel!
    
    override func setUpWithError() throws {
        objCollectionViewCell = CollectionViewCell()

        testLabel = UILabel()
        objCollectionViewCell.label = testLabel
    }

    override func tearDownWithError() throws {
        objCollectionViewCell = nil
        testLabel = nil
    }
    
    func testChangeTestFizzBuzz() {
        objCollectionViewCell.changeTest(with: UICollectionViewCell(), value: 15)
        XCTAssertEqual(objCollectionViewCell.label?.text, "FizzBuzz", "Value 15 should display 'FizzBuzz'")
    }
    
    func testChangeTestFizz() {
        objCollectionViewCell.changeTest(with: UICollectionViewCell(), value: 9)
        XCTAssertEqual(objCollectionViewCell.label?.text, "Fizz", "Value 9 should display 'Fizz'")
    }
    
    func testChangeTestBuzz() {
        objCollectionViewCell.changeTest(with: UICollectionViewCell(), value: 20)
        XCTAssertEqual(objCollectionViewCell.label?.text, "Buzz", "Value 20 should display 'Buzz'")
    }
    
    func testChangeTestNormalNumbers() {
        objCollectionViewCell.label?.text = "1"
        objCollectionViewCell.changeTest(with: UICollectionViewCell(), value: 1)
        XCTAssertEqual(objCollectionViewCell.label?.text, "1", "Value 1 should not change label")
        
        objCollectionViewCell.label?.text = "2"
        objCollectionViewCell.changeTest(with: UICollectionViewCell(), value: 2)
        XCTAssertEqual(objCollectionViewCell.label?.text, "2", "Value 2 should not change label")
        
        objCollectionViewCell.label?.text = "7"
        objCollectionViewCell.changeTest(with: UICollectionViewCell(), value: 7)
        XCTAssertEqual(objCollectionViewCell.label?.text, "7", "Value 7 should not change label")
    }
    
    func testChangeTestWithZero() {
        objCollectionViewCell.changeTest(with: UICollectionViewCell(), value: 0)
        XCTAssertEqual(objCollectionViewCell.label?.text, "FizzBuzz", "Value 0 should display 'FizzBuzz' (0 is divisible by both 3 and 5)")
    }
    
    func testChangeTestWithNegativeNumbers() {
        objCollectionViewCell.changeTest(with: UICollectionViewCell(), value: -30)
        XCTAssertEqual(objCollectionViewCell.label?.text, "FizzBuzz", "Value -30 should display 'FizzBuzz'")
        
        objCollectionViewCell.changeTest(with: UICollectionViewCell(), value: -9)
        XCTAssertEqual(objCollectionViewCell.label?.text, "Fizz", "Value -9 should display 'Fizz'")
        
        // Test negative number divisible by 5 only
        objCollectionViewCell.changeTest(with: UICollectionViewCell(), value: -5)
        XCTAssertEqual(objCollectionViewCell.label?.text, "Buzz", "Value -5 should display 'Buzz'")
        
        objCollectionViewCell.label?.text = "-7"
        objCollectionViewCell.changeTest(with: UICollectionViewCell(), value: -7)
        XCTAssertEqual(objCollectionViewCell.label?.text, "-7", "Value -7 should not change label")
    }
}
