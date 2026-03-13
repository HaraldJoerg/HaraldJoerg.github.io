# ABSTRACT: A class derived from /usr/include/pipewire-0.3/pipewire/stream.h
package PipeWire::Pw::Buffer;
use feature 'class';

class PipeWire::Pw::Buffer :isa(PipeWire::Struct);

field $buffer    :param :reader; # struct spa_buffer*
field $requested :param :reader; # uint64_t
field $size      :param :reader; # uint64_t
field $time      :param :reader; # uint64_t
field $user_data :param :reader; # void*

ADJUST {
    require PipeWire::Spa::Buffer;
    $buffer = PipeWire::Spa::Buffer->perlify($buffer);
}
1;
