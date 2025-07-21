//
//  DataExample.swift
//  Manifests
//
//  Created by 박서연 on 7/18/25.
//

// DataExample
import Domain

public struct DataExampleData {
    public let testDomain = DomainExampleToData(data: "데이터모듈에서 도메인 테스트하기")
    public let data: String
    
    public init(data: String) {
        self.data = data
    }
}
