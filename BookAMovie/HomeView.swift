//
//  HomeView.swift
//  BookAMovie
//
//  Created by Harry Kwesi De Graft on 02/01/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false,  content:{
        
            LazyVStack(spacing:15, pinnedViews: [.sectionFooters], content: {
               
                HStack{
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "chevron.left")
                            .font(.title2)
                    })
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "bookmark")
                            .font(.title2)
                    })
                }
                        .overlay(
                            Text("Detail movie")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                            .padding()
                            .foregroundColor(.white)
                
                ZStack{
                    Image("poster")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: getRect().width/1.5, height: getRect().height/2, alignment: .center)
                        .cornerRadius(15)
                }
            })

        })
        .background(Color("bg")).ignoresSafeArea(.keyboard)
        
    }
}

#Preview {
    HomeView()
}


extension View{
    
    func getRect() -> CGRect{
        return UIScreen.main.bounds
    }
}
