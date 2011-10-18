use warnings;
my $item;
open (FILE, "ZteAutofindTelnet.log") or die $!;
foreach $line (<FILE>)
{
	if (substr ($line, 0, 10) eq "gpon-onu_0")
		{
		 	@item1 = split("/", $line);
			@item2= split (":", $item1[2]);
			$item3=substr ($item2[1],index($item2[1],"ZTE"),12);
			print $item1[1], " - ", $item2[0], " - ", $item3, "\n";
		}
}
