#!/usr/bin/perl

use File::Find;

sub eachFile {
  my $filename = $_;
  my $fullpath = $File::Find::name;
  #remember that File::Find changes your CWD, 
  #so you can call open with just $_

  if (rindex($filename, '.pm') != -1) { 
	system('perldoc '.$filename.' > '.$filename.'.documentation');
	#print($filename);
	#print($fullpath);
	#print("\n");
 }
}

find (\&eachFile, "./");
