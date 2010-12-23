package Dashboard;

use Moose;

has state => (is => 'rw');

sub door_opened { shift->state('open') }
sub door_closed { shift->state('closed') }

1;
