//
//  HotNewsView.swift
//  HomeWork1
//
//  Created by Sfera on 01.12.2019.
//  Copyright © 2019 Duy Nguyen. All rights reserved.
//

import SwiftUI

final class HotNewsViewModel: ObservableObject {
    @Published private(set) var news = [
        News(image: "Apple_new", title: "Cosmic Crisp: New apple that 'lasts for a year'", shortDescription: "The new fruit took US scientists two decades to develop and the launch cost $10m (£7.9m)."),
        News(image: "Namibian_new", title: "Namibian president wins re-election", shortDescription: "The ruling party's candidate has a second term, but his share of the vote has dropped significantly."),
        News(image: "Islanders_new", title: "Canadian islanders angry over US mail searches", shortDescription: "Campobello islanders can only get their mail via the US, and now their packages are being searched.")
    ]
}

struct News: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let shortDescription: String
}

struct HotNewsView: View {
    @ObservedObject var newsModel = HotNewsViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(newsModel.news) { new in
                        NavigationLink(destination: NewView()) {
                            HStack(alignment: .center, spacing: 5) {
                                Image(new.image)
                                    .cornerRadius(8)
                                VStack(alignment: .leading, spacing: 10, content: {
                                    Text(new.title)
                                        .font(.title)
                                        .multilineTextAlignment(.leading)
                                    Text(new.shortDescription)
                                        .font(.body)
                                        .multilineTextAlignment(.leading)
                                    
                                })
                            }
                            
                        }
                    }
                }
            }
            .navigationBarTitle("Hot news")
        }
        
        
    }
}

struct HotNewsView_Previews: PreviewProvider {
    static var previews: some View {
        HotNewsView()
    }
}
