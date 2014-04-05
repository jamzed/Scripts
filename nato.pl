#!/usr/bin/perl

## Word conversion to NATO alphabet (NATO spelling)
## Patryk Kuzmicz // patryk.kuzmicz@gmail.com // 2014.03.31

use strict;
use warnings;
use English;

my %alphabet = (
	'A' => 'Alpha',
	'B' => 'Bravo',
	'C' => 'Charlie',
	'D' => 'Delta',
	'E' => 'Echo',
	'F' => 'Foxtrot',
	'G' => 'Golf',
	'H' => 'Hotel',
	'I' => 'India',
	'J' => 'Juliet',
	'K' => 'Kilo',
	'L' => 'Lima',
	'M' => 'Mike',
	'N' => 'November',
	'O' => 'Oscar',
	'P' => 'Papa',
	'Q' => 'Quebec',
	'R' => 'Romeo',
	'S' => 'Sierra',
	'T' => 'Tango',
	'U' => 'Uniform',
	'V' => 'Victor',
	'W' => 'Whiskey',
	'X' => 'X-ray',
	'Y' => 'Yankee',
	'Z' => 'Zulu',
);

if ( defined ($ARGV[0]) )
{
	my $word = $ARGV[0];
	foreach my $letter (split //, $word)
	{
		$letter = uc($letter);
		print $letter . "\t" . $alphabet{$letter} . "\n";
	}
}
else
{
	print "$0 <word>\n";
}
