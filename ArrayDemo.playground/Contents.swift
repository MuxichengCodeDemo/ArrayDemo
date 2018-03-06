//: Playground - noun: a place where people can play

import Cocoa

extension Array {
    public mutating func moveItem(from currentIndex: Int, to expectedIndex: Int) {
        self = currentIndex > expectedIndex ? moveUp(from: currentIndex, to: expectedIndex) : moveDown(from: currentIndex, to: expectedIndex)
    }
    
    private func moveUp(from currentIndex: Int, to expectedIndex: Int) -> Array {
        guard 0...self.count ~= currentIndex else { return self }
        guard 0...self.count ~= expectedIndex else { return self }
        if currentIndex > expectedIndex {
            var sort = self
            swap(&sort[currentIndex], &sort[currentIndex - 1])
            return sort.moveUp(from: currentIndex - 1, to: expectedIndex)
        } else {
            return self
        }
    }
    
    private func moveDown(from currentIndex: Int, to expectedIndex: Int) -> Array {
        guard 0...self.count ~= currentIndex else { return self }
        guard 0...self.count ~= expectedIndex else { return self }
        if currentIndex < expectedIndex {
            var sort = self
            swap(&sort[currentIndex], &sort[currentIndex + 1])
            return sort.moveDown(from: currentIndex + 1, to: expectedIndex)
        } else {
            return self
        }
    }
}

let array = [0,1,2,3,4,5,6,7,8,9]

var a = array
a.moveItem(from: 1, to: 5)

var b = array
b.moveItem(from: 3, to: 1)

var c = array
c.moveItem(from: 1, to: 1)

var d = array
d.moveItem(from: -1, to: 5)




























