use Test::More tests => 2;
use strict;
use warnings;

use lib 'lib';

# the order is important
use Lystyng;
use Dancer::Test;

route_exists [GET => '/'], 'a route handler is defined for /';
response_status_is ['GET' => '/'], 200, 'response status is 200 for /';