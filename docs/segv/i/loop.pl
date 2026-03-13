# tutorial2.pl:
$ffi->type('opaque' => 'main_loop_t');
$ffi->attach(pw_main_loop_new => ['opaque'] => 'main_loop_t');
my $loop = pw_main_loop_new(undef);
