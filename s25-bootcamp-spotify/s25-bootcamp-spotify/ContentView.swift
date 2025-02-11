//
//  ContentView.swift
//  s25-bootcamp-spotify
//
//  Created by Ethan Tran on 2/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 140/255.0, green: 145/255.0, blue: 135/255.0),
                            Color(red: 111/255.0, green: 115/255.0, blue: 103/255.0)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .edgesIgnoringSafeArea(.all)
            @State var sliderValue : Float = 6.7
            VStack {
                HStack {
                    Image(systemName: "chevron.down")
                        .foregroundStyle(.white)
                        .font(.system(size: 28))
                    Spacer()
                    Text("CHROMAKOPIA")
                        .foregroundStyle(.white)
                        .bold()
                    Spacer()
                    Image(systemName: "ellipsis")
                        .foregroundStyle(.white)
                }
                Image("Chromakopia-Cover")
                    .padding(.vertical, 50)
                    HStack {
                    VStack(alignment: .leading) {
                        Text("Like Him (feat. Lola Young)")
                            .font(.system(size:25))
                            .bold()
                            .foregroundStyle(.white)
                        HStack {
                            Text("E")
                                .font(.system(size: 12, weight: .bold, design: .rounded))
                                .foregroundColor(.black)
                                .padding(.horizontal, 4)
                                .padding(.vertical, 2)
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 3))
                            Text("Tyler, The Creator, Lola Young")
                                .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                                .font(.system(size: 17))
                        }
                    }
                    Spacer()
                    DownloadedIcon()
                }
                VStack {
                    Slider(value: $sliderValue, in: 0...10)
                        .accentColor(.white)
                    
                    HStack {
                        Text("3:02")
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .font(.system(size: 15))
                        Spacer()
                        Text("-1:26")
                            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                            .font(.system(size: 15))
                    }
                }
                HStack {
                    Image(systemName: "shuffle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.green)
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 8)
                    Spacer()
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .foregroundStyle(.white)
                    Spacer()
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 8)
                    Spacer()
                    Image(systemName: "repeat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.white)
                }
                HStack{
                    Image(systemName: "hifispeaker.2")
                        .foregroundStyle(.white)
                        .font(.system(size: 22))
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .foregroundStyle(.white)
                        .padding(.horizontal, 16)
                        .font(.system(size: 22))
                    Image(systemName: "rectangle.stack")
                        .foregroundStyle(.white)
                        .font(.system(size: 22))

                }
                .padding(.vertical, 8)
                Spacer()
            }
            .padding()
        }
    }
}


struct DownloadedIcon: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.green)
                .frame(width: 30, height: 30)

            Image(systemName: "checkmark")
                .font(.system(size: 15, weight: .bold))
                .overlay(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 140/255.0, green: 145/255.0, blue: 135/255.0),
                            Color(red: 111/255.0, green: 115/255.0, blue: 103/255.0)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .mask(
                        Image(systemName: "checkmark")
                            .font(.system(size: 15, weight: .bold))
                    )
                )
        }
    }
}

#Preview {
    ContentView()
}
