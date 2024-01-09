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
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white.opacity(0.2))
                        .padding(.horizontal)
                        .offset(y:12)
                    
                    Image("poster")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(15)
                }
                .frame(width: getRect().width/1.5, height: getRect().height/2, alignment: .center)
                .padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 15, content: {
                    Text("The Dark Knight")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    
                    Text("Director: Christopher Nolan")
                        .foregroundColor(.white)
                        .overlay(
                        
                             Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                .offset(x: 35, y: -2)
                             ,
                             alignment: .trailing
                        )
                    
                    LazyVGrid(columns:
                                [GridItem(.adaptive(minimum: 80))],alignment: .leading, content: {
                      
                        ForEach(genre, id: \.self){genreText in
                            
                            Text(genreText)
                                .font(.caption)
                                .padding(.vertical,10)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(.white)
                                .background(Color.white.opacity(0.08))
                                .clipShape(Capsule())
                        }
                        
                    })
                    .padding(.top, 20)
                    
                    Text("Synopsis")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical)
                    
                    Text(synopsis)
                        .foregroundColor(.white)
                    
                })
                .padding(.top,55)
                .padding(.horizontal)
                .padding(.leading,10)
                .frame(maxWidth: .infinity, alignment: .leading)
                
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
