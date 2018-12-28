use Tk;

my $window = MainWindow->new;
$window->title("A first Tk Demo");
$window->Label(-text => "This is a chunk of descriptive text")->pack;
$window->Button(-text => "Print a value", -command => \&but )->pack;
$window->Button(-text => "Double the value", -command => sub {$val*=2} )->pack;
$window->Button(-text => "This is a quit button ", -command => \&finito )->pack;
MainLoop;

###############################################

sub but {
print "value is $val\n";
}

sub finito{
print "going away ...\n";
print "final value is $val\n";
exit;
}

sub BEGIN {
$val = 2;
}