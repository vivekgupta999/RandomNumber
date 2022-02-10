import SwiftUI
 
@available(iOS 15.0, macOS 12.0, *)
public struct RandomNumber: View {
    
    @ObservedObject var random = RandomNumberVM()
    @Binding public var randomNumber : Int
    
    public var body: some View {
        VStack{
            TextField("Enter Number", value: $random.number, formatter: NumberFormatter())
                .padding()
                .textFieldStyle(.roundedBorder)

            Button {
                randomNumber = random.generateRandomNumber()
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

