import SwiftUI
 
@available(iOS 15.0, macOS 12.0, *)
public struct Remdom: View {
    @ObservedObject var random : RandomVM
    public var body: some View {
        VStack{
            TextField("Enter Number", value: $random.number, formatter: NumberFormatter())
                .padding()
                .textFieldStyle(.roundedBorder)

            Button {
                random.generateRandomNumber()
            } label: {
                Text("Send")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
            }

        }
    }
    
    
}

