////
////  test.swift
////  kehillah.today-swiftuitestyes
////
////  Created by Ovlic B on 1/30/23.
////
//
//import Foundation
//import SwiftUI
//
//struct Test: View {
//    
//    @State var itemIndex: Int = 0
//    @State var showListItems: Bool = true
//    private let theList: [TheItem] = [
//        TheItem(
//            name: "Block 1",
//            when: "8:30 AM",
//            color: rgb(r:110, g:192, b:214)
//        ),
//        TheItem(
//            name: "Block 2",
//            when: "9:25 AM",
//            color: rgb(r: 141, g: 124, b: 194)
//        ),
//        TheItem(
//            name: "Block 3",
//            when: "10:00 AM",
//            color: rgb(r:193, g:123, b:160)
//        ),
//        TheItem(
//            name: "Block 4",
//            when: "10:45 AM",
//            color: rgb(r:224, g:102, b:101)
//        ),
//        TheItem(
//            name: "Block 5",
//            when: "11:30 AM",
//            color: rgb(r:42, g:163, b:172)
//        ),
//        TheItem(
//            name: "Block 6",
//            when: "12:15 PM",
//            color: rgb(r:214, g:64, b:135)
//        ),
//        TheItem(
//            name: "Block 7",
//            when: "1:00 PM",
//            color: rgb(r:180, g:167, b:213)
//        ),
//        TheItem(
//            name: "Block 8",
//            when: "1:45 PM",
//            color: rgb(r:159, g:197, b:233)
//        ),
//        TheItem(
//            name: "Block 9",
//            when: "2:30 PM",
//            color: rgb(r:214, g:166, b:190)
//        ),
//        TheItem(
//            name: "Lunch",
//            when: "N/A",
//            color: rgb(r:170, g:204, b:170)
//        ),
//        TheItem(
//            name: "Reflective Practice",
//            when: "N/A",
//            color: rgb(r:201, g:204, b:170)
//        ),
//        TheItem(
//            name: "Seminar",
//            when: "N/A",
//            color: rgb(r:207, g:207, b:134)
//        ),
//        TheItem(
//            name: "Advisory",
//            when: "N/A",
//            color: rgb(r:194, g:136, b:162)
//        ),
//        TheItem(
//            name: "Kab Shab",
//            when: "N/A",
//            color: rgb(r:108, g:145, b:217)
//        ),
//        TheItem(
//            name: "Passing Period",
//            when: "N/A",
//            color: rgb(r: 198, g: 198, b: 218)
//        )
//    ]
//    
//    init() {
//        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Righteous", size: 30)!]
//        
//        var titleSelection: some View {
//            VStack (spacing: 4) {
//                Text("Title")
//                    .font(.title)
//                    .fontWeight(.semibold)
//                Text("Subtitle goes here")
//            }
//        }
//        
//    }
//    var body: some View {
//        //Toggle("Show List Items", isOn: $showListItems)
//        
//        
//        
//        VStack{
//            
//            CustomNavBarView()
//                .frame(height: 50)
//            
//            VStack {
//                
//                //List {
//                ForEach(theList.indices, id: \.self) {index in
//                    VStack {
//                        //List {
//                        HStack {
//                            ZStack(alignment: .leading) {
//                                
//                                VStack {
//                                    Text(theList[index].name)
//                                        .font(.custom("BarlowSemiCondensed", size: 30))
//                                        .fontWeight(.bold)
//                                    //.frame(width: 165, height: 65)
//                                    Text("at "+theList[index].when)
//                                        .font(.custom("BarlowSemiCondensed", size: 20))
//                                    
//                                    //.frame(width: 165, height: 65)
//                                    //.padding(.bottom, 15)
//                                }.frame(height: 50)
//                            }
//                            //}
//                            //.frame(width: 165, height: 65)
//                            .navigationTitle("kehillah.today   "+String(getTime()))
//                            
//                            .listRowBackground(theList[index].color)
//                            .opacity(showListItems ? 1 : 0)
//                            .animation(Animation.easeOut(duration: 0.6).delay(0.025 * Double(index)), value: showListItems)
//                            
//                        }
//                        .frame(width: UIScreen.screenWidth - 50, height: 65)
//                        .opacity(showListItems ? 1 : 0)
//                        
//                        
//                    }
//                    
//                    .onAppear{
//                        let baseAnimation = Animation.easeInOut(duration: 1)
//                        withAnimation(baseAnimation) {
//                        }
//                    }
//                }
//            }
//            
//        }
//    }
//    
//    func updateIndex() {
//        self.itemIndex += 1
//    }
//}
//
//
//struct Test_Previews: PreviewProvider {
//    static var previews: some View {
//        Test()
//    }
//}


// here we set the current date


