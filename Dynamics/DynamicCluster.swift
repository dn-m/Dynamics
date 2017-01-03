//
//  DynamicCluster.swift
//  Dynamics
//
//  Created by James Bean on 1/3/17.
//
//

extension Dynamic {
    
    /// Structure of one or more `Dynamic` objects.
    public struct Cluster {

        private let dynamics: [Dynamic]

        public var posterior: Dynamic {
            return dynamics.first!
        }
        
        public var anterior: Dynamic {
            return dynamics.first!
        }

        public init(_ dynamics: [Dynamic]) {
            
            guard !dynamics.isEmpty else {
                fatalError("There must be 1 or more Dynamic values in a Dynamic.Cluster")
            }
            
            self.dynamics = dynamics
        }
    }
}
