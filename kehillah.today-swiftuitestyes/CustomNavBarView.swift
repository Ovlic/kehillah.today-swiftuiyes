//
//  CustomNavBarView.swift
//  kehillah.today-swiftuitestyes
//
//  Created by Ovlic B on 1/27/23.
//

import SwiftUI

struct CustomNavBarView: View {
    @State var date = Date()
    
    var body: some View {
        VStack {
            HStack {
                VStack (spacing: 4) {
                    VStack { //from here
                        Text("kehillah")
                            .foregroundColor(.kt1) + //this
                        Text(".")
                            .foregroundColor(.kt2) +
                        Text("today")
                            .foregroundColor(.kt3) //this
                    }
                    .font(.custom("Righteous", size: 25))
                    .fontWeight(.semibold)
                    .frame(
                        maxWidth: .infinity,
                        alignment: .topLeading
                    )
                    .padding(10)
                }
                VStack (spacing: 4) {
                    Text("\(getDate())\n\(timeString(date: date))")
                        .onAppear(perform: {let _ = self.updateTimer})
                        .multilineTextAlignment(.trailing)
                        .frame(
                            alignment: .topTrailing
                        )
                        .font(.custom("BarlowSemiCondensed", size: 20))
                        .foregroundColor(.kt1)
                }
                Spacer()
            }
            .accentColor(.white)
            .font(.headline)
            //.background(Color.blue)
            .frame(maxHeight: 50)
            Spacer()
        }
    }
    
    var timeFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm:ss a"
        return formatter
    }
    
    func timeString(date: Date) -> String {
        let time = timeFormat.string(from: date)
        return time
    }
    
    var updateTimer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true,
                             block: {_ in
            self.date = Date()
        })
    }
    
    func getDate() -> String {
        var finalstr: String = ""
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        let dayOfTheWeekString = dateFormatter.string(from: date)
        
        dateFormatter.dateFormat = "LLLL"
        let monthString = dateFormatter.string(from: date)
        
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: date)
        let dayOfMonth = components.day
        
        finalstr += dayOfTheWeekString + ", " + monthString + " " + "\(dayOfMonth!)"
        
        return finalstr
    }
}

struct CustomNavBarViews_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBarView()
        
    }
}

extension CustomNavBarView {
    private var titleSection: some View {
        VStack (spacing: 4) {
            Text("Title")
                .font(.title)
                .fontWeight(.semibold)
            Text("Subtitle goes here")
        }
    }
}

extension Color {
    static let kt1 = Color(red: 65 / 255, green: 66 / 255, blue: 86 / 255)
    static let kt2 = Color(red: 149 / 255, green: 144 / 255, blue: 165 / 255)
    static let kt3 = Color(red: 204 / 255, green: 51 / 255, blue: 51 / 255)
}
