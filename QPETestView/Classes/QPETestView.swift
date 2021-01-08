//
//  ArKitTestView.swift
//  PodArKit
//
//  Created by Jérémy Adoux on 08/01/2021.
//

import UIKit
import ARKit
import SceneKit

public class QPETestView: UIView, ARSCNViewDelegate {
    let sceneView = ARSCNView()
    let labelView = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initView()
    }
    
    override func layoutSubviews() {
        self.moveBounds()
    }
    
    
    func moveBounds() {
        labelView.frame = CGRect(x: 0, y: self.bounds.height / 2, width: self.bounds.width, height: 20)
        sceneView.frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
    }
    
    func initView() {
        sceneView.delegate = self

        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        sceneView.frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
        
        labelView.text = "Biloute man ?"
        labelView.frame = CGRect(x: 0, y: self.bounds.height / 2, width: self.bounds.width, height: 20)
        labelView.backgroundColor = .white
        
        self.addSubview(self.sceneView)
        self.addSubview(self.labelView)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
        
        
        self.addobject3D()
    }
    
    
    func addobject3D() {
        let box = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        let node = SCNNode(geometry: box)
        node.position = SCNVector3(0,0,0)
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }

}
