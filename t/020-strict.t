use Test::More tests => 1;

do {
    package Need::Strict;
    no warnings 'deprecated';
    use Any::Moose;

    eval {
        my $foo = "ack!";
        my $bar = '$foo';

        my $garbage = $$bar;
    };

    ::ok($@, "Any::Moose gives you strictures");
};

