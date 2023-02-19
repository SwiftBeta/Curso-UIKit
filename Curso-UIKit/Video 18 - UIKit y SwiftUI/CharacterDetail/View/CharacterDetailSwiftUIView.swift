//
//  CharacterDetailSwiftUIView.swift
//  UIKit18_SwiftUI_en_UIKit
//
//  Created by Home on 22/9/22.
//

import SwiftUI

struct CharacterDetailSwiftUIView: View {
    var model: CharacterModel
    
    init(model: CharacterModel) {
        self.model = model
    }
    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: URL(string: model.image)) { image in
                image
                    .resizable()
                    .frame(width: 200, height: 200)
                    .scaledToFit()
                    .padding(12)
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(model.name)
                    .padding(.bottom, 6)
                Text(model.status)
                    .padding(.bottom, 6)
                Text(model.species)
                    .padding(.bottom, 6)
            }
            .padding(.vertical, 12)
            Spacer()
        }
        Spacer()
    }
}

struct CharacterDetailSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        let model: CharacterModel = .init(name: "SwiftBeta", status: "iOS Dev", species: "Human", image: "")
        return CharacterDetailSwiftUIView(model: model)
    }
}
