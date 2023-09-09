use strict;
use warnings;

my $operation;
my $input1;
my $input2;
my $answer;
my $doagain;

calculator();

sub calculator{
	print "What operation (Add, Sub, Mul, Div, Mod, Pow) do you want to do? ";
	chomp($operation= <>);
	if($operation eq ''){
	   print "Do you want to do this again?(y/n) ";chomp($doagain = <>);
	        if ($doagain =~ /^y/) {
   		calculator();
   	} else {
   		print "goodbye\n";
   		exit;
  	}
}
	print "Enter the first number: ";chomp($input1 = <>);
	print "Enter the second number: ";chomp($input2 = <>);
	if ($operation =~ /^Add/) {
		$answer = $input1 + $input2;
	} elsif ($operation =~ /^Sub/) {
	$answer = $input1 - $input2;
	} elsif ($operation =~ /^Mul/) {
		$answer = $input1 * $input2;
	} elsif ($operation =~ /^Div/) {
	$answer = $input1 / $input2;
	}elsif ($operation =~ /^Mod/) {
 		$answer = $input1 % $input2;
	}elsif ($operation =~ /^Pow/) {
 		$answer = $input1 ** $input2;
 	}else{
 		print "Invalid input.\n";
 		print "goodbye.\n";
 		exit;
 	}
  	print "The answer is $answer\n";
  	print "Do you want to do this again? ";chomp($doagain = <>);
	if ($doagain =~ /^y/) {
   		calculator();
   	} else {
   		print "goodbye\n";
  	}
  }