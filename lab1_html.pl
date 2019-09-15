#! /bin/usr/perl

use strict;
use warnings;
 
my $htmlDoc = <<'END_MESSAGE';
<h1>Лабораторная работа №1</h1>
<h3>Общая структура программы. Ввод и вывод информации. Форматы</h3>
<p>Работу выполнили:</p>
<ol>
<li>Бренченинов Святослав</li>
<li>Якомазов Михаил</li>
<li>Самсонкин Андрей</li>
</ol>
END_MESSAGE
 
print $htmlDoc;