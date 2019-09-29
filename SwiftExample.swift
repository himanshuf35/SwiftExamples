import UIKit
let typeOfStudies:String? = nil
if let name = typeOfStudies {
    print("I am studying \(name)")
}
else {
    print("I am not studying anything")
}

func differntiateBorthersAge(FirstAge: NSInteger, SecondAge: NSInteger, ThirdAge: NSInteger) -> Void {
    print("""
        I am \(FirstAge - SecondAge) years older than my brother.
        and \(FirstAge - ThirdAge) years older than my youngest brother.
        In other words I am the oldest among us siblings
        """)
}

func evaluateMarks(_ Marks: [Int]) -> Void {
//    var dictionaryExp = [String: NSInteger]()
//    dictionaryExp = ["FirstAge":19, "SecondAge": 20, "ThirdAge": 30]
    for marks in Marks {
        if marks < 40{
            print("This student with marks \(marks) is failed")
        }
        else if marks > 40 && marks < 90{
            print("This student is passed with \(marks) marks")
        }
        else if marks > 90 {
            print("This student has got excellent marks")
        }
    }
}

func printExamStatements(Marks: [Int]) -> [String] {
    //Example of Range operators and switch-case
    var ExamString = [String]()
    var rangeOperatorType:String
    rangeOperatorType = "Closed"
//    rangeOperatorType = "Half"
//    rangeOperatorType = "One"
    switch rangeOperatorType{
    case "Closed" :
            for iter in 0...Marks.count - 1 {
                ExamString.append("Marks of student \(iter + 1) are \(Marks[iter])")
            }
    case "Half" :
            for iter in 0..<Marks.count {
                ExamString.append("Marks of student \(iter + 1) are \(Marks[iter])")
            }
    case "One" :
            for iter in Marks[1...] {
                ExamString.append("Marks of student are \(iter)")
            }
    default :
        for iter in Marks[...3] {
            ExamString.append("Marks of student are \(iter)")
        }
    }
    return ExamString
}

func typeConversionDemo() -> Void {
    let anInteger = 4
    let aDouble = 2.3
    let result = Double(anInteger) + aDouble
    print(result)
}

func tupleExample() -> (name: String, number: NSInteger, anArray:[Int]){
    return ("Aname", 335, [1, 3, 5])
}

func optionlVariableDemo() {
    //Exclamation Mark(!) is used to access the value of an optional variable
    var aVar: String?
    aVar = nil
    if aVar != nil {
        print(aVar!)
    }
    //OR
    if let tempVar = aVar {
        print(tempVar)
    }
    var anotherVar:String = "Another"
    /* "??" operator is used to unwrap an optional if it contains any value otherwise right operand value is assigned as seen in code below
    */
    anotherVar = aVar ?? "NULL"
    print(anotherVar)
    
}

func stringOperations() {
    var aString:String = "String Example"
    var firstEleInd, lastEleInd, someIndex: String.Index
    //Getting First and Last char Index
    firstEleInd = aString.startIndex
    lastEleInd = aString.index(before: aString.endIndex)
    //Getting some index on the basis of first or last char Index
    someIndex = aString.index(firstEleInd, offsetBy:5)
    print("Beginning:\(aString[firstEleInd]), Ending:\(aString[lastEleInd])")
    print("Somewhere 5 steps from beginning: \(aString[someIndex])")
    func traverse(type: String) {
        if type == "char" {
            for char in aString {
                print("The character is \(char)")
            }
        }
        else if type == "indices" {
            for ind in aString.indices {
                print("element is \(aString[ind])")
            }
        }
    }
    func insertAndRemove() {
        //Insertion
        aString.insert("!", at: aString.endIndex)
        aString.insert(contentsOf: "Welcome ", at: firstEleInd)
        print(aString)
        //Removal
        aString.remove(at: aString.index(before: aString.endIndex))
        aString.removeSubrange(firstEleInd...aString.index(firstEleInd, offsetBy: 7))
        print(aString)
        //Index finding
        let indexOf:String.Index = aString.firstIndex(of: " ") ?? aString.startIndex
        aString.insert(contentsOf: "Space", at: indexOf)
        // Use range for getting a substring
        print(aString)
        var aSubString = aString[firstEleInd...lastEleInd]
        print(aSubString)
        aSubString.remove(at: lastEleInd)
        print("Original string now is \(aString) and Substring \(aSubString)")
//        print(aString[aString.index(lastEleInd, offsetBy: -1)])
    }
    insertAndRemove()
//    traverse(type: "char")
}

//typeConversionDemo()
//let (Name, number, array) = tupleExample()
//optionlVariableDemo()
//let aTuple = tupleExample()
//print(aTuple.number + aTuple.anArray[2])
//differntiateBorthersAge(FirstAge:24, SecondAge:21, ThirdAge:18)
//let Marks = [35, 47, 54, 38, 28, 95]
//evaluateMarks(Marks)
//let stringArray = printExamStatements(Marks: Marks)
//print(stringArray)

stringOperations()
