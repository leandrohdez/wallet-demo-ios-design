//
//  DemoUseCase.swift
//  Wallet
//
//  Created by Leandro Hernandez on 10/2/22.
//

import Foundation

enum DemoCaseResult {
    case success
    case unknownError
}

class DemoUseCase: BaseUseCase {
    
    override init() {
        
    }
    
    override func execute() {
        super.execute()
        self.doSomething()
    }
    
}

extension DemoUseCase {
    
    //
    private func doSomething() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.finish(caseResult: DemoCaseResult.success)
        }
    }
    
}
