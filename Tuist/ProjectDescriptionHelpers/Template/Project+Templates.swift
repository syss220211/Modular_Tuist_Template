//
//  Project+Template.swift
//  Manifests
//
//  Created by 박서연 on 7/14/25.
//

import ProjectDescription

public extension Project {
    /// 서비스 이름
    private static let appName = Environment.appName
    /// 지원 플랫폼
    private static let destination = Environment.destinations
    /// 최소 지원 버전
    private static let deploymentTarget = Environment.deploymentTarget
    /// 조직 이름
    private static let organizationName = Environment.organizationName
    
    /// 타겟을 통해서 프로젝트를 생성하는 함수입니다.
    static func makeProject(
        name: String,
        product: Product,
        hasResource: Bool
    ) -> Project {
        let debugScheme = Scheme.scheme(
            schemeName: "\(name)Debug",
            targetName: name,
            configurationName: .debug
        )
        
        let releaseScheme = Scheme.scheme(
            schemeName: "\(name)Release",
            targetName: name,
            configurationName: .release
        )
        
        return Project(
            name: name,
            organizationName: organizationName,
            options: options(disableBundleAccessors: hasResource),
            settings: Settings.defaultTargetSettings(),
            targets: [
                Target.makeTarget(
                    name: name,
                    hasResource: hasResource,
                    product: product,
                    dependencies: DependencyInformation.dependencies(name: name)
                )
            ],
            schemes: [debugScheme, releaseScheme]
        )
    }
    
    private static func options(disableBundleAccessors: Bool) -> Options {
        return Options.options(
            automaticSchemesOptions: .disabled,
            defaultKnownRegions: ["en", "ko"],
            developmentRegion: "ko",
            disableBundleAccessors: !disableBundleAccessors
        )
    }
}
