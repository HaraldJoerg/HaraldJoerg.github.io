use 5.032;
use feature 'signatures';


package Object {
    use Moose;
    no warnings 'experimental';

    has vertices => (is => 'ro', isa => 'ArrayRef');
    has faces    => (is => 'ro', isa => 'ArrayRef');

    sub BUILD ($self,$args) {
        $self->{faces}     =  [$self->init_faces($args)];
        $self->{vertices}  =  [$self->init_vertices($args)];
    }
}


package Box {
    use Moose;
    extends 'Object';
    no warnings 'experimental';

    sub init_vertices ($self,$args) {
        my ($x,$y,$z) = map { $_ / 2 } $args->{size}->@*;
        return ([-$x,-$y,-$z],  # 0
                [ $x,-$y,-$z],  # 1
                [-$x, $y,-$z],  # 2
                [ $x, $y,-$z],  # 3
                [-$x,-$y, $z],  # 4
                [ $x,-$y, $z],  # 5
                [-$x, $y, $z],  # 6
                [ $x, $y, $z]); # 7
    }

    my @init_faces = ([0,2,3,1],[0,1,5,4],[0,4,6,2],
                      [1,3,7,5],[2,6,7,3],[4,5,7,6]);
    sub init_faces {
        return @init_faces;
    }
}


my $box = Box->new(size => [4,9,1]);
$DB::single = $DB::single = 1;
say "Done";
