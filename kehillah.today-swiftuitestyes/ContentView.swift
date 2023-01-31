//
//  ContentView.swift
//  kehillah.today-swiftuitestyes
//
//  Created by Ovlic B on 1/24/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var itemIndex: Int = 0
    @State var showListItems: Bool = true
    private let theList: [TheItem] = [
        TheItem(
            name: "Block 1",
            when: "8:30 AM",
            color: rgb(r:110, g:192, b:214)
        ),
        TheItem(
            name: "Block 2",
            when: "9:25 AM",
            color: rgb(r: 141, g: 124, b: 194)
        ),
        TheItem(
            name: "Block 3",
            when: "10:00 AM",
            color: rgb(r:193, g:123, b:160)
        ),
        TheItem(
            name: "Block 4",
            when: "10:45 AM",
            color: rgb(r:224, g:102, b:101)
        ),
        TheItem(
            name: "Block 5",
            when: "11:30 AM",
            color: rgb(r:42, g:163, b:172)
        ),
        TheItem(
            name: "Block 6",
            when: "12:15 PM",
            color: rgb(r:214, g:64, b:135)
        ),
        TheItem(
            name: "Block 7",
            when: "1:00 PM",
            color: rgb(r:180, g:167, b:213)
        ),
        TheItem(
            name: "Block 8",
            when: "1:45 PM",
            color: rgb(r:159, g:197, b:233)
        ),
        TheItem(
            name: "Block 9",
            when: "2:30 PM",
            color: rgb(r:214, g:166, b:190)
        ),
        TheItem(
            name: "Lunch",
            when: "N/A",
            color: rgb(r:170, g:204, b:170)
        ),
        TheItem(
            name: "Reflective Practice",
            when: "N/A",
            color: rgb(r:201, g:204, b:170)
        ),
        TheItem(
            name: "Seminar",
            when: "N/A",
            color: rgb(r:207, g:207, b:134)
        ),
        TheItem(
            name: "Advisory",
            when: "N/A",
            color: rgb(r:194, g:136, b:162)
        ),
        TheItem(
            name: "Kab Shab",
            when: "N/A",
            color: rgb(r:108, g:145, b:217)
        ),
        TheItem(
            name: "Passing Period",
            when: "N/A",
            color: rgb(r: 198, g: 198, b: 218)
        )
    ]
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Righteous", size: 30)!]
        
        var titleSelection: some View {
            VStack (spacing: 4) {
                Text("Title")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Subtitle goes here")
            }
        }
        
    }
    var body: some View {
        
        ScrollView {
            VStack {
                CustomNavBarView()
                    .frame(height: 50)
                Spacer()
            }
            VStack {
                ForEach(theList.indices, id: \.self) {index in
                    HStack {
                        VStack (alignment: .leading) {
                            Text("\(theList[index].name)")
                                .font(.system(size: 25))
                            //.font(.custom("BarlowSemiCondensed", size: 30))
                            
                                .fontWeight(.bold)
                            
                            Text("at "+theList[index].when + " (20h 50m)")
                                .font(.custom("BarlowSemiCondensed", size: 25)
                                )
                        }
                        .padding(.leading, 35)
                        Spacer()
                        
                    }
                    .padding([.top, .bottom], 5)
                    .background(RoundedRectangle(cornerRadius: 15)
                        .fill(theList[index].color)
                        .frame(width: UIScreen.screenWidth
                               - 30, height: 65))
                }
            }
        }
    }
    
    func updateIndex() {
        self.itemIndex += 1
    }
    func widthToSpace(px: Int) -> Int {
        let eq = (Float(px) * 1.33)
        let rnd = round(eq)
        return Int(rnd)
    }
}

struct TheItem: Identifiable {
    let id = UUID()
    let name: String
    let when: String
    let color: Color
}

func rgb(r:Double, g:Double, b:Double) -> Color {
    return Color(red: Double(r/255), green: Double(g/255), blue: Double(b/255))
}

func getTime() -> String {
    let formatter = DateFormatter()
    formatter.timeStyle = .short
    let dateString = formatter.string(from: Date())
    return dateString
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}
