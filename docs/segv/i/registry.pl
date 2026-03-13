# tutorial2.pl
$ffi->type('opaque' => 'registry_t');
$ffi->attach('pw_core_get_registry',['core_t','uint32_t','size_t']
             => 'registry_t');
my $registry = pw_core_get_registry($core,PW_VERSION_REGISTRY,0);
