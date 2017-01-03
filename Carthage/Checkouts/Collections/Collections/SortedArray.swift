//
//  SortedArray.swift
//  Collections
//
//  Created by James Bean on 12/10/16.
//
//

/// `Array` that keeps itself sorted.
///
/// - note: Qol: Consider implementing with self-balancing BST or heap.
public struct SortedArray <T: Comparable> {
    
    fileprivate var array: [T] = []
    
    // MARK: - Initializers
    
    /// Create an empty `SortedArray`.
    public init() { }
    
    /// Create a `SortedArray` with another `Array` value.
    public init(_ array: [T]) {
        self.array = array.sorted()
    }
    
    // MARK: - Instance Methods
    
    /// Remove the given `element`, if it is contained herein.
    ///
    /// - TODO: Make `throws` instead of returning silently.
    public mutating func remove(_ element: T) {
        guard let index = array.index(of: element) else { return }
        array.remove(at: index)
    }

    /// Insert the given `element`. Order will be kept.
    public mutating func insert(_ element: T) {
        let index = insertionPoint(for: element)
        array.insert(element, at: index)
    }
    
    /// Insert the contents of another sequence of `T`.
    public mutating func insertContents <S: Sequence> (of elements: S)
        where S.Iterator.Element == T
    {
        elements.forEach { insert($0) }
    }
    
    /// Binary search to find insertion point
    ///
    /// - TODO: Move to extension on `BidirectionCollection where Element: Comparable`.
    private func insertionPoint(for element: T) -> Int {
        var range = 0 ..< array.count
        while range.startIndex < range.endIndex {
            let midIndex = range.startIndex + (range.endIndex - range.startIndex) / 2
            if array[midIndex] == element {
                return midIndex
            } else if array[midIndex] < element {
                range = (midIndex + 1) ..< range.endIndex
            } else {
                range = range.startIndex ..< midIndex
            }
        }
        return range.startIndex
    }
}

/// - returns: `SortedArray` with the contents of two `SortedArray` values.
public func + <T> (lhs: SortedArray<T>, rhs: SortedArray<T>) -> SortedArray<T> {
    var result = lhs
    result.insertContents(of: rhs)
    return result
}

// MARK: - `Equatable`

extension SortedArray: Equatable { }

/// - returns: `true` if all elements in both arrays are equivalent. Otherwise, `false`.
public func == <T> (lhs: SortedArray<T>, rhs: SortedArray<T>) -> Bool {
    return lhs.array == rhs.array
}

extension SortedArray: Collection {
    
    // MARK: - `Collection`
    
    /// - Index after given index `i`.
    public func index(after i: Int) -> Int {
        guard i != endIndex else { fatalError("Cannot increment endIndex") }
        return i + 1
    }
    
    /// Start index.
    public var startIndex: Int { return 0 }
    
    /// End index.
    public var endIndex: Int { return array.count }
    
    /// - returns: Element at the given `index`.
    public subscript (index: Int) -> T {
        return array[index]
    }
}

extension SortedArray: ExpressibleByArrayLiteral {
    
    // MARK: - `ExpressibleByArrayLiteral`
    
    /// - returns: Create a `SortedArray` with an array literal.
    public init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}
