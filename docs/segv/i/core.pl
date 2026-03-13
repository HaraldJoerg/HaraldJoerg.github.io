# tutorial2.pl
$ffi->type('opaque' => 'core_t');
$ffi->attach('pw_context_connect' => ['context_t','opaque','size_t']
             => 'core_t');
my $core = pw_context_connect($context,undef,0);
