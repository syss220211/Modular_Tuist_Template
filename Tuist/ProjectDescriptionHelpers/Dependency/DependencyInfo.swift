//
//  DependencyInfo.swift
//  Manifests
//
//  Created by 박서연 on 7/16/25.
//

import ProjectDescription

/// 각 모듈이 가지는 의존성 정보를 정리합니다.
let dependencyInfo: [DependencyInformation: [DependencyInformation]] = [
    .templateApp: [.dicontainer, .presentation],
    .dicontainer: [.presentation, .domain, .data, .designSystem, .core],
    .presentation: [.domain, .core, .designSystem],
    .domain: [.core],
    .data: [.domain, .core],
    .designSystem: [.core],
    .core: [],
]

/// 외부 라이브러리를 정리합니다.
let externalDependencyInfo: [DependencyInformation: [DependencyInformation]] = [
    .data: [.alamofire],
    .designSystem: [.kingFisher],
    .presentation: [.lottie]
]

/// 모듈 및 SPM에 대해서 정의합니다.
public enum DependencyInformation: String, CaseIterable, Sendable {
    // MARK: - Clean Architecture 기반으로 설정
    case templateApp = "TemplateApp"
    case presentation = "Presentation"
    case domain = "Domain"
    case data = "Data"
    case designSystem = "DesignSystem"
    case core = "Core"
    case dicontainer = "DIContainer"
    
    // MARK: - 사용할 SPM 명세 (보통 자주 사용하는 걸 추가해놓았습니다.)
    case kingFisher = "Kingfisher"
    case alamofire = "Alamofire"
    case lottie = "Lottie"
}

/// 모듈과 의존성을 연결합니다.
public extension DependencyInformation {
    /// name(String)을 기반으로 의존성 모듈(TargetDependency)을 반환
    static func dependencies(name: String) -> [TargetDependency] {
        guard let module = DependencyInformation(rawValue: name) else { return [] }

        // 내부 모듈 의존성
        let internalModules = dependencyInfo[module] ?? []
        let internalDependencies: [TargetDependency] = internalModules.map {
            .project(target: $0.rawValue, path: .relativeToRoot("Projects/\($0.rawValue)"))
        }

        // 외부 라이브러리 의존성
        let externalModules = externalDependencyInfo[module] ?? []
        let externalDependencies: [TargetDependency] = externalModules.map {
            .external(name: $0.rawValue)
        }

        return internalDependencies + externalDependencies
    }
}
