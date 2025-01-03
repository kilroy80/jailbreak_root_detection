//
//  JailbreakRootDetection.swift
//  jailbreak_root_detection
//
//  Created by M on 24/1/2566 BE.
//

import Foundation

class JailbreakRootDetection {
    
    func checkJailBroken() -> Bool {
        let isJailBroken = UIDevice.current.isJailBroken
        let amReverseEngineered = ReverseEngineeringChecker.amIReverseEngineered()
        let fridaFound = FridaChecker.isFound()
        let cydiaFound = CydiaChecker.isFound()
        
        return isJailBroken
        || amReverseEngineered
        || fridaFound
        || cydiaFound
    }

    func checkJail() -> Bool {
        let isJailBroken = UIDevice.current.isJailBroken

        return isJailBroken
    }

    func checkDebugged() -> Bool {
        return DebuggerChecker.amIDebugged()
    }

    func checkReverseEngineered() -> Bool {
        return ReverseEngineeringChecker.amIReverseEngineered()
    }

    func checkProxied() -> Bool {
        return false
    }

    func checkFrida() -> Bool {
        return FridaChecker.isFound()
    }

    func checkCydia() -> Bool {
        return CydiaChecker.isFound()
    }
    
    func checkRealDevice() -> Bool {
        let isSimulator = UIDevice.current.isSimulator

        return !isSimulator
    }
    
    func checkTampered(bundleId: String) -> Bool {
        if bundleId != Bundle.main.bundleIdentifier {
            return true
        }

        return false
    }
}
