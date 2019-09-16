#! /bin/usr/perl
sub uniq 
{
    my %seen;
    grep !$seen{$_}++, @_;
}

@FirstArray;
@SecondArray;

@FirstArrayInpt ;
@SecondArrayInpt;
print "Введите элементы первого массива\n";
while ($line = <STDIN> and $line=~ /^[0-9]$/) 
{
    push(@FirstArray,$line);
}

print "Введите элементы второго массива\n";
#завершение строки - пустая строчка
while ($line = <STDIN> and $line=~ /^[0-9]$/) 
{
    push(@SecondArray,$line);
}
if (@#FirstArray != @#SecondArray)
{
    print "Вы ввели неправильное количество элементов\n";
    exit;
}
@sum = uniq(@FirstArray, @SecondArray);
print "Объединение массивов:\n @sum";
@intersection;
foreach my $itemFirst (@FirstArray){
   foreach my $itemSecond (@SecondArray){
      if($itemFirst==$itemSecond){
         $temporyVarable = $itemFirst;
         push(@intersection,$temporyVarable)
      }
   }
}
print "Пересечение массивов: \n @intersection";

@first_minus_second;
foreach my $i @FirstArray
{
    my $j;
    foreach $j @SecondArray
    {
        if($i == $j)
            break;
    }
    if($i ne $j)
        push @first_minus_second $i;
}

@second_minus_first;
foreach my $i @SecondArray
{
    my $j;
    foreach $j @FirstArray
    {
        if($i == $j)
            break;
    }
    if($i ne $j)
        push @second_minus_first $i;
}

print "\n Разница между первым и вторым:\n @first_minus_second";
print "\n Разница между вторым и первым:\n @second_minus_first";

@symmetricDifference = uniq(@first_minus_second, @second_minus_first);

print "\n Симметрическая разница:\n @symmetricDifference";
print"\n";
#---2---------------------------------------------------------

@permutationArray = @FirstArray;
$counter = 0;

# $counter - 2 нормально не работает в цикле поэтому два раза по $counter--
 for ($counter = $#permutationArray; $counter > 0; $counter--){
 
    $buf = $permutationArray[$counter];
    $permutationArray[$counter] = $permutationArray[$counter-1];
    $permutationArray[$counter-1] = $buf;
    $counter--;
    
    # Эта хуйня не работает. ебанная меточика в рот ебал
    # $permutationArray[$counter-1,$counter] = $permutationArray[$counter,$counter-1];
 }

 print "The permutation array :\n @permutationArray";
 
 
#--3----------------------------------------------------------

@evenOddMassive;
$counterEvenOdd = 0;
$counterOdd = 0;
$counterEven = 0;

while($counterEvenOdd < $#FirstArray + $#SecondArray + 2){

   if($counterEvenOdd % 2 == 0){
      $evenOddMassive[$counterEvenOdd] = $FirstArray[$counterEven];
      $counterEven++;
   }

   if($counterEvenOdd % 2 == 1){
      $evenOddMassive[$counterEvenOdd] = $SecondArray[$counterOdd];
      $counterOdd++;
   }

   $counterEvenOdd++;
}
 print "The evenOddMassive array :\n @evenOddMassive";