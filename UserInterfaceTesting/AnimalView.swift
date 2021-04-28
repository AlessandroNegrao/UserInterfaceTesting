//
//  AnimalView.swift
//  UserInterfaceTesting
//
//  Created by Alessandro Negrão on 27/04/21.
//

import SwiftUI

struct AnimalView: View {
    
    let colorsSet = [Color.red, Color.green, Color.blue]
    @State var colorButton = Color.red
    @State var colorIndex = 0
    @State var animalImage = true
    @State var sliderValue = Double(0)
    @State var stepperValue = 0
    @State var toggleIsOn = false
    
    
    var body: some View {
        Form {
            Button(action: {
                if self.animalImage {self.animalImage = false}
                if (self.colorIndex + 1) < self.colorsSet.count {self.colorIndex += 1}
                else {self.colorIndex = 0}
                self.colorButton = self.colorsSet[self.colorIndex]
            }) {
                Rectangle()
                    .foregroundColor(colorButton)
            }
            .cornerRadius(10)
            .frame(height: 60)
            .accessibility(identifier: "colorButton")
            .accessibility(value: Text("\(colorButton.description)"))
            
            Image(animalImage ? "suindara" : "piramboia")
                .resizable()
                .scaledToFit()
                .accessibility(identifier: "animalImage")
            
            HStack {
                Slider(value: $sliderValue, label: {
                    Text("Slider: \(String(format: "%.1f", Double(sliderValue)))")
                })
                    
                    .accessibility(identifier: "slider")
                Text("Slider: \(String(format: "%.1f", Double(sliderValue)))")
                    .accessibility(identifier: "sliderValue")
            }
            
            Stepper(value: $stepperValue, in: 0...10) {
                Text("Stepper: \(stepperValue)")
            }
            .accessibility(identifier: "stepper")
            Toggle(isOn: $toggleIsOn) {
                Text(toggleIsOn ? "Toggle on!" : "")
            }
            .accessibility(label: Text(toggleIsOn ? "Toggle on!" : ""))
            .accessibility(identifier: "toggle")
        }
    }
}

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView()
    }
}
