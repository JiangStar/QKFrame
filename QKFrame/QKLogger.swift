//
//  NSLog.swift
//  QKFrame
//
//  Created by Jiang, Xinxing on 16/5/8.
//  Copyright © 2016年 Jiang, Star. All rights reserved.
//

import Foundation

class QKLogger {
    private enum LEVEL: String {
        case DEBUG = "DEBUG"
        case INFO = "INFO"
        case WARN = "WARN"
        case ERROR = "ERROR"
    }
    
    class func debugLog<T>(object: T, fileName:NSString = #file, lineNumber: Int = #line, functionName: NSString = #function) {
        let log = self.log(object, level: .DEBUG, fileName: fileName, lineNumber: lineNumber, functionName: functionName)
        NSLog(log)
    }
    
    class func infoLog<T>(object: T, fileName:NSString = #file, lineNumber: Int = #line, functionName: NSString = #function) {
        let log = self.log(object, level: .INFO, fileName: fileName, lineNumber: lineNumber, functionName: functionName)
        NSLog(log)
    }
    
    class func warnLog<T>(object: T, fileName:NSString = #file, lineNumber: Int = #line, functionName: NSString = #function) {
        let log = self.log(object, level: .WARN, fileName: fileName, lineNumber: lineNumber, functionName: functionName)
        NSLog(log)
    }
    
    class func errorLog<T>(object: T, fileName:NSString = #file, lineNumber: Int = #line, functionName: NSString = #function) {
        let log = self.log(object, level: .ERROR, fileName: fileName, lineNumber: lineNumber, functionName: functionName)
        NSLog(log)
    }
    
    private class func log<T>(object: T, level: LEVEL, fileName:NSString, lineNumber: Int, functionName: NSString) -> String {
        let logText = "[\(level.rawValue)][\(fileName.lastPathComponent) - \(functionName):\(lineNumber)] - \(object)"
        return logText
    }
}