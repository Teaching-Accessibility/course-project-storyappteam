//
//  CharacterView.swift
//  Tailor Your Tales
//
//  Created by Daniel Koronthaly on 5/6/24.
//

import SwiftUI

struct HairView: View {
    var hairColor: Color
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = geometry.size.width
                let height = geometry.size.height
                let spacing = width * 0.0030
                let middle = width / 2
                let topWidth = width * 0.1
                let topHeight = height * 0.3


                path.addLines([
                    CGPoint(x: middle, y: spacing),
                    CGPoint(x: middle - topWidth / 2, y: topHeight - spacing),
                    CGPoint(x: middle, y: topHeight / 2 + spacing),
                    CGPoint(x: middle + topWidth / 2, y: topHeight - spacing),
                    CGPoint(x: middle, y: spacing)
                ])
            }
            .fill(hairColor)
        }
    }
}

struct FaceView: View {
    var body: some View{
        Circle()
            .fill(Color.red)
            .frame(width: 30, height: 30)
            .padding(.top, 10)
    }
}

struct CharacterView: View {
    //help
    var characterColor: Color
    var hairColor: Color
    var skinColor: Color
    var eyeColor: Color
    var scale: CGFloat
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                Spacer(minLength: 0)
                
                HairView(hairColor: self.hairColor)
                    .scaleEffect(scale)
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.6, alignment: .center)
                
                FaceView()
                    .padding(.top, -10 * scale)
                    .scaleEffect(scale)
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.6, alignment: .center)
                
                Spacer(minLength: 0)
            }
        }
    }
}

#Preview {
    CharacterView(characterColor: Color.black, hairColor: Color.blue, skinColor: Color.yellow, eyeColor: Color.cyan, scale: 1.0)
}
