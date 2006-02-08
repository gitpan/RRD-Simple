use Test::More;
eval "use Test::Pod::Coverage 1.00";
plan skip_all => "Test::Pod::Coverage 1.00 required for testing POD Coverage" if $@;
all_pod_coverage_ok({
		also_private => [ qr/^[A-Z_]+$/ ],
		trustme => [ qw(last_values|fetch|last_update) ],
	}); #Ignore all caps

1;
