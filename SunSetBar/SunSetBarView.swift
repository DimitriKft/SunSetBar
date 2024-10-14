//
//  SunSetBarView.swift
//  SunSetBar
//
//  Created by dimitri on 14/10/2024.
//

import SwiftUI

struct SunSetBarView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.indigo, .purple, .yellow, .orange]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack {
                HStack {
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.pink, Color.orange, Color.yellow]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .font(.largeTitle)
                    Text("Sun Set Bar")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.pink, Color.orange,  Color.yellow]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                }
                Spacer()
                ZStack {
                    Circle()
                        .fill(
                            RadialGradient(
                                gradient: Gradient(colors: [.yellow.opacity(0.2), .clear]),
                                center: .center,
                                startRadius: 100,
                                endRadius: 200
                            )
                        )
                        .frame(width: 250, height: 250)
                    Circle()
                        .fill(
                            RadialGradient(
                                gradient: Gradient(colors: [.yellow.opacity(0.4), .clear]),
                                center: .center,
                                startRadius: 50,
                                endRadius: 150
                            )
                        )
                        .frame(width: 200, height: 200)
                    Circle()
                        .fill(
                            RadialGradient(
                                gradient: Gradient(colors: [.yellow, .orange]),
                                center: .center,
                                startRadius: 5,
                                endRadius: 100
                            )
                        )
                        .frame(width: 150, height: 150)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    SunSetBarView()
}
