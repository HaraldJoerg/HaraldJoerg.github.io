use 5.038;
use Object::Pad;
no warnings 'experimental';


class O3D::Object {
    field @vertices;
    field @faces;

    ADJUST {
        @faces    = $self->init_faces;
        @vertices = $self->init_vertices;
    };
}


class O3D::Box :isa(O3D::Object) {
    no warnings 'experimental';

    field $size :param = [2,2,2];

    method init_vertices {
        my ($x,$y,$z) = map { $_ / 2 } @$size;
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
    method init_faces {
        return @init_faces;
    }
}


my $box   = O3D::Box->new(size => [4,9,1]);
$DB::single = $DB::single = 1;
'At the debugger prompt, say "x $box <RETURN>"';
