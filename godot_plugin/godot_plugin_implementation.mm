//
//  godot_plugin_implementation.m
//  godot_plugin
//
//  Created by Sergey Minakov on 14.08.2020.
//  Copyright © 2020 Godot. All rights reserved.
//

#import <Foundation/Foundation.h>

#include "core/project_settings.h"
#include "core/class_db.h"

#import "godot_plugin_implementation.h"

void PluginExample::_bind_methods() {
    ClassDB::bind_method(D_METHOD("foo"), &PluginExample::foo);
}

Error PluginExample::foo() {
    NSLog(@"foo");
    return OK;
}

PluginExample::PluginExample() {
    NSLog(@"initialize object");
}

PluginExample::~PluginExample() {
    NSLog(@"deinitialize object");
}
