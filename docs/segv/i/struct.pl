# as a reference / pointer
use FFI::C;
FFI::C->struct(vec3d =>
               [ x => 'double', y => 'double', z => 'double' ]);
