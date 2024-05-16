import SwiftUI
import SceneKit

struct SimpleLogoView: UIViewRepresentable {
    func makeUIView(context: Context) -> SCNView {
        // Create a SceneKit scene
        let scene = SCNScene()
        
        // Create a cube geometry
        let cubeGeometry = SCNBox(width: 2.0, height: 2.0, length: 2.0, chamferRadius: 0.0)
        let cubeNode = SCNNode(geometry: cubeGeometry)
        
        // Create a material for the cube with a color
        let material = SCNMaterial()
        material.diffuse.contents = UIColor.red // You can change the color
        
        // Apply the material to the cube
        cubeGeometry.materials = [material]
        
        // Add the cube to the scene
        scene.rootNode.addChildNode(cubeNode)
        
        // Create text geometry
        let textGeometry = SCNText(string: "Logo", extrusionDepth: 0.1)
        textGeometry.font = UIFont.systemFont(ofSize: 1.0)
        
        // Create a material for the text with a color
        let textMaterial = SCNMaterial()
        textMaterial.diffuse.contents = UIColor.white // You can change the color
        
        // Apply the material to the text
        textGeometry.materials = [textMaterial]
        
        // Create a node for the text and position it
        let textNode = SCNNode(geometry: textGeometry)
        textNode.position = SCNVector3(-0.8, -0.8, 1.1)
        
        // Add the text node to the scene
        scene.rootNode.addChildNode(textNode)
        
        // Create an SCNView
        let scnView = SCNView(frame: .zero)
        scnView.scene = scene
        
        return scnView
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {}
}

struct ContentView2: View {
    var body: some View {
        SimpleLogoView()
            .frame(width: 200, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
