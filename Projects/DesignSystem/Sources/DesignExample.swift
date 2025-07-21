//
//  DesignExample.swift
//  Manifests
//
//  Created by 박서연 on 7/18/25.
//

// DesignExample
import SwiftUI

public struct TestButton: View {
    public let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        Button {
            print("hi")
        } label: {
            Text("\(text)")
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
        }
        .padding(.horizontal, 50)
    }
}
