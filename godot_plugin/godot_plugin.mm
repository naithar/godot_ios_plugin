//
//  godot_plugin.m
//  godot_plugin
//
//  Created by Sergey Minakov on 14.08.2020.
//  Copyright © 2020 Godot. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "godot_plugin.h"
#import "godot_plugin_implementation.h"

#import "core/engine.h"

PluginExample *plugin;

void godot_plugin_init() {
    NSLog(@"init plugin");

    plugin = memnew(PluginExample);
    Engine::get_singleton()->add_singleton(Engine::Singleton("PluginExample", plugin));
}

void godot_plugin_deinit() {
    NSLog(@"deinit plugin");
    
    if (plugin) {
       memdelete(plugin);
   }
}
