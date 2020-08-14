//
//  godot_plugin_implementation.h
//  godot_plugin
//
//  Created by Sergey Minakov on 14.08.2020.
//  Copyright © 2020 Godot. All rights reserved.
//

#ifndef godot_plugin_implementation_h
#define godot_plugin_implementation_h

#include "core/object.h"

class PluginExample : public Object {
    GDCLASS(PluginExample, Object);
    
    static void _bind_methods();
    
public:
    
    Error foo();
    
    PluginExample();
    ~PluginExample();
};

#endif /* godot_plugin_implementation_h */
