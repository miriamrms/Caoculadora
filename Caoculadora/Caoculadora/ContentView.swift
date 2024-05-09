//
//  ContentView.swift
//  Caoculadora
//
//  Created by Miriam Rayane Mendes da Silva on 07/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var years: Int? = nil
    @State var months: Int? = nil
    @State var result: Int?
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Qual a idade do seu cão?")
            Text("Anos")
            TextField("Quantos anos completos tem seu cão?",
                      value: $years,
                      format: .number)
          
            Text("Meses")
            TextField("E quantos meses além disso ele tem?",
                      value: $months,
                      format: .number)
            Text("Porte")
            
            //botao sem trailing closure
            //Button(action: {print("Botão foi clicado")}, label: {Text("Clique aqui")})
            //botao com trailing closure
//            Button("Clique aqui"){
//                print("Botão foi clicado")
//            }
//            .frame(width: 300)
//            .padding()
//            .background(Color.blue)
//            .foregroundColor(.white)
//            .cornerRadius(10)
            if let result {
                Text("Seu cachorro tem, em idade humana...")
                Text("\(result) anos")
            } else {
                Image(ImageResource.clarinha)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 150)
                    .frame(maxWidth: .infinity)
            }
            Button("Cãocular"){
                print("cãocular")
                result = 23
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(.indigo)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .textFieldStyle(.roundedBorder)
        .keyboardType(.numberPad)
        .padding()
    }
}

#Preview {
    ContentView()
}
