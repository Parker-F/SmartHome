//
//  main.swift
//  SmartHome
//
//  Created by Parker, Fred (NPTL) on 24/11/2023.

import Foundation

//Provide an indication of the statuses of all smart devices in the home

class Device {
    var name : String = ""
    var status : Bool = false
    
    func toggleStatus() {
        if status == false {
            status = true
        } else {
            status = false
        }
        print ("\(name) is now \(status)")
        
    }
}
class Light: Device {
    var brightness: Int
    
    init(brightness: Int) {
        self.brightness = brightness
    }
    func adjustBrightness(_ newBrightness: Int) {
        brightness = newBrightness
        print ("\(name)'s brightness is now set to \(brightness)")
    }
}

class Audio: Device {
    var volume: Int
    
    init(volume: Int) {
        self.volume = volume
    }
    func adjustVolume(_ newVolume: Int) {
        volume = newVolume
        print ("\(name)'s volume is now set to \(volume)")
    }
}

class Heating: Device {
    var temp : Int
    
    init(temp: Int) {
        self.temp = temp
    }
    func adjustTemp(_ newTemp: Int) {
        temp = newTemp
        print ("\(name)'s temperature is now set to \(temp)ºC")
        
    }
}

class SmartHome {
    var devices: [Device]
    
    init(devices: [Device]) {
        self.devices = devices
    }
    func displayStatus () {
        print ("Smart Home System Status: ")
        for device in devices {
            print("\(device): \(device.status)")
        }
    }
    func addDevice (device : Device) {
        devices.append(device)
        print ("\(device.name) added to the Smart Home")
        
    }
    func removeDevice(device: Device) {
        var found = false
        for smartDevice in devices {
            if smartDevice.name == device.name {
                found = true
            }
        }
        if found == false {
            print("\(device.name) does not exist, try using a different name")
        } else {
            devices.remove(device)
        }
    }
}
