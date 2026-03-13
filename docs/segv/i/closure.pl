my sub registry_callback ($data,$id,$permissions,$type,$version,$props) {
    ...
}
my $callback = $ffi->closure(\&registry_callback);

# FFI::Platypus assumes that something like this exists:
$ffi->attach(pw_callback => ['(opaque uint32_t uint32_t
                               string uint32_t opaque)->void'] => 'void');
pw_callback($callback);
