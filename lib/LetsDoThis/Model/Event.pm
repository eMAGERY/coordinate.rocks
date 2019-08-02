package MyApp::Model::Users;

use strict;
use warnings;

sub new { bless {}, shift }

sub check {
  my ($self, $user, $pass) = @_;

  # Success
  return 1 if $USERS->{$user} && secure_compare $USERS->{$user}, $pass;

  # Fail
  return undef;
}

1;