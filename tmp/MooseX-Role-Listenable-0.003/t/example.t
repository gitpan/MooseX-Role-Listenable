#!/usr/bin/perl

package main;
use strict;
use warnings;
use FindBin;
use lib ("$FindBin::Bin/lib", "$FindBin::Bin/../lib");
use Test::More tests => 2;
use Car;
use Dashboard;


my $car = Car->new;
my $dash = Dashboard->new;

$car->add_door_opened_listener($dash);
$car->add_door_closed_listener($dash);

$car->open_door;
is $dash->state, open => 'open';

$car->close_door;
is $dash->state, closed => 'closed';
