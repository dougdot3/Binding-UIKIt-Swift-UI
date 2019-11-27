# UIViewControllerRepresentable Test 

The goal was to walk through the process of binding SwiftUI to a ViewController. This is accomplished through UIViewControllerRepresentable.

In this case, although we could have used UIViewRepresentable I was trying to test ViewControllers. In the test, I chose a UILabel to show a string value that would change when a button is pressed.

In SwiftUI:

`@State private var textHere = "Filler Value"
@State private var textLabel = UILabel(frame: CGRect(x: 40.0, y: 120.0, width: 250.0, height: 100.0))

var body: some View {
  VStack {
   RepresentablePreviewView(text: $textHere, label:$textLabel)
    VStack{
     Button(action : {
      print("Button Pressed")
      self.textHere = "Button was pressed"
     }, label : {
      Text("Show Camera Preview")
     })
    }
   }
 }`
 
 # The Issue
The value is effectively 'bound' via the UIViewControllerRepresentable:

`@Binding var text: String
@Binding var label: UILabel
...    
func updateUIViewController(_ representableViewController: RepresentableViewController, context: UIViewControllerRepresentableContext<RepresentablePreviewView>) {
 representableViewController.text = self.text
 representableViewController.label = self.label
 representableViewController.updateController()
}`

However:
- When I tried to bind just a STRING, two instances of the label would appear
- Binding a UILabel in addition to the string prevents this, but the label position changes when the button is clicked.

More work to do!

