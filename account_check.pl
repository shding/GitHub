	use strict;
	use warnings;
	
	my $filename = "list.txt";
	my $count = 0;
	my $item;
	open (Flist, "< $filename") || die("Could not open file $filename");
	foreach $item(<Flist>)
	{	
		$item =~ /^\s*\d+\s+([+-])([\d\.]+)/;
		$count += $2 if ($1 eq '+');
		$count -= $2 if ($1 eq '-');
	}
	close(Flist);
	print "The banlence of account is $count\n";