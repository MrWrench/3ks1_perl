#! /bin/usr/perl

use strict;
use warnings;
 
my $htmlDoc = <<'END_MESSAGE';
<h1>������������ ������ �1</h1>
<h3>����� ��������� ���������. ���� � ����� ����������. �������</h3>
<p>������ ���������:</p>
<ol>
<li>����������� ���������</li>
<li>�������� ������</li>
<li>��������� ������</li>
</ol>
END_MESSAGE
 
print $htmlDoc;