#!./perl

BEGIN {
    unshift @INC, 't/CORE-CPANEL/lib';
}

BEGIN { require 't/CORE-CPANEL/test.pl'; }

plan(tests => 1);

# It is important that the script contains at least one newline character
# that can be expanded to \r\n on DOSish systems.
fresh_perl_is("\xEF\xBB\xBFprint 1;\nprint 2", "12", {}, "script starts with a BOM" );