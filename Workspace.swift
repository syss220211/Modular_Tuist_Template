//
//  Workspace.swift
//  Manifests
//
//  Created by 박서연 on 7/19/25.
//

import ProjectDescription

let workspace = Workspace(
    name: "TemplateApp",
    projects: [
        "Projects/TemplateApp",
        "Projects/Presentation",
        "Projects/DesignSystem",
        "Projects/Domain",
        "Projects/Data",
        "Projects/DIContainer",
        "Projects/Core"
    ]
)
