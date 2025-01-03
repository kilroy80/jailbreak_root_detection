//
//  DebuggerChecker.swift
//  jailbreak_root_detection
//
//  Created by M on 24/1/2566 BE.
//

import Foundation

class DebuggerChecker {
  // https://developer.apple.com/library/archive/qa/qa1361/_index.html
  static func amIDebugged() -> Bool {
    var kinfo = kinfo_proc()
    var mib: [Int32] = [CTL_KERN, KERN_PROC, KERN_PROC_PID, getpid()]
    var size = MemoryLayout<kinfo_proc>.stride
    let sysctlRet = sysctl(&mib, UInt32(mib.count), &kinfo, &size, nil, 0)

    if sysctlRet != 0 {
      print("Error occured when calling sysctl(). The debugger check may not be reliable")
    }

    return (kinfo.kp_proc.p_flag & P_TRACED) != 0
  }
}