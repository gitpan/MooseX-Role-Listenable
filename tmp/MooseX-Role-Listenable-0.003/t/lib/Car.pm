package Car;

use Moose;

with 'MooseX::Role::Listenable' => {event => 'door_opened'};
with 'MooseX::Role::Listenable' => {event => 'door_closed'};

sub open_door  { shift->door_opened }
sub close_door { shift->door_closed }


1;
