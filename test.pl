# Tipos de datos en Perl

$false = 0;    # returns false
$true = 1;   # any values greater or less than 0 returns true

$negative = -3; # negative
$zero = 0; # zero (can also be false, if used as a Boolean
$positive = 123; # positive decimal
$zeroPos = 0123; #0 prefix is used to sepcify octal - octal value = 83 decimal
$hex = 0xAB; #0x prefix is used to specify hexadecimal - hexadecimal value = 171 decimal
$bin = 0b1010; # 0b prefix is used to specify binary - binary value = 10 decimal
print $negative," " ,$zero," " , $positive," " , $zeroPos," " , $hex," " , $bin; 

#-> -3 0 123 83 171 10

$float1 = 1.23;
$float2 = 10.0000001;
print $float1," ",$float2;

#-> 1.23 10.0000001

#Array

@intarray = (1, 2, 3); # An array of integers
print "@intarray \n";
#-> 1 2 3

@floatarray = (1.123, 2.356, 19.76); # An array of floats
print "@floatarray \n";
#-> 1.123 2.356 19.76

@chararray = ('a', 'b','c'); # An array of characters
print "@chararray \n";
#-> a b c

@mixed = (1, 2, 3, 'a', 'b', 'c'); #contains both characters and numbers
print "@mixed";
#-> 1 2 3 a b c


#String

$string1 = "A quick brown fox jumps over the lazy dog";
print $string1;

#-> A quick brown fox jumps over the lazy dog

#Variables:

$vehicle = "car"; # vehicle has value "car"
$$vehicle = "honda"; # car has value "honda"

print "\$vehicle:\t"; 
print $vehicle; #prints car
print "\n";


print "\${\$vehicle}:\t";   # using \ as $ is special character
print ${$vehicle}; #prints honda
print "\n";

print "\$\$vehicle:\t"; 
print $$vehicle; #prints honda
print "\n";

print "\$car:\t\t"; 
print $car; #prints honda
print "\n";

$skyColor = 'Blue';
$varPrefix = 'sky';

print "\$skyColor:\t\t";
print $skyColor; # Outputs "Blue"
print"\n";

print "\${\$varPrefix . 'Color'}:\t"; 

=POD
varPrefix will give value sky and the dot operator concatenates
it with Color hence making it skyColor. 
Putting $ before skycolor makes it a variable variable.
=cut

print ${$varPrefix . 'Color'}; # Also outputs "Blue"

$fruit = "Mango";
  $$fruit = "yellow";
    print "The color of ", $fruit , " is "  , $Mango ;

#-> The color of Mango is yellow

=POD
Problem Statement
* Declare an int type variable and name it intNumber and assign it a value of 1000.
* Declare a char type variable and name it charName and assign it a value of N.
* Declare a boolean type variable and name it boolAccept and assign it a value of 1.
* Declare a float type variable and name it floatNum and assign it a value of 10.292.
Now output these values on the console using the print function in Perl. The values should be separated by a comma.
=cut
#-> 1000, N, 1, 10.292

#Solución:

$intNumber = 1000;
$charName = 'N';
$boolAccept = 1;
$floatNum = 10.292;

print $intNumber, ", ", $charName, ", ", $boolAccept, ", ", $floatNum;




