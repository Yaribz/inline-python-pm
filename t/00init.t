BEGIN {
   print "1..1\n";
}

use File::Path;

rmtree("./blib_test");
sleep(1) if($^O eq 'MSWin32'); # workaround for dubious behavior on Windows...
mkdir("./blib_test", 0777) or print "not ok 1\n" && exit;

print "ok 1\n";
