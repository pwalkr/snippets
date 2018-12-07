#!/usr/bin/env perl

use strict;
use warnings;

package foo;

sub fizz() {
    printf "buzz\n";
}

package bar;

no strict 'refs';
foreach my $symbol (keys %foo::) {
    if (defined &{"foo::$symbol"}) {
        printf "$symbol\n";
        &{"foo::$symbol"}();
    }
}
