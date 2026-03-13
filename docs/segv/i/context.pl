# tutorial2.pl
$ffi->type('opaque' => 'context_t');
$ffi->attach('pw_context_new' => ['loop_t', 'opaque', 'int']
             => 'context_t');
my $context = pw_context_new(pw_main_loop_get_loop($loop),undef,0);
