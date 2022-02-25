//
//  DemoDomain.swift
//  Wallet
//
//  Created by Leandro Hernandez on 10/2/22.
//

import Foundation

class DemoDomain {
    
    static let UseCases = DemoDomain()
 
    //
    func demo(completion: @escaping (_ result: DemoCaseResult) -> Void) {
        let useCase = DemoUseCase()
        useCase.endHandle = { (resultCase) in
            if let result = resultCase as? DemoCaseResult {
                completion(result)
            }
        }
        useCase.execute()
    }
    
}
