# "by value"
use FFI::Platypus::Record;
package Vec3D;
record_layout_1($ffi,
                double => 'x', double => 'y', double => 'z');
$ffi->type('record(Vec3D)' => 'vec3d');
