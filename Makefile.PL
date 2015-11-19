#!/usr/bin/env perl
use strict;
use warnings;
use ExtUtils::MakeMaker;

my ($mm) = $ExtUtils::MakeMaker::VERSION =~ /^([^_]+)/;

WriteMakefile(
    NAME          => 'App::Nopaste::Service::WerePaste',
    VERSION_FROM  => 'lib/App/Nopaste/Service/WerePaste.pm',
    ABSTRACT_FROM => 'lib/App/Nopaste/Service/WerePaste.pm',
    AUTHOR        => 'Matthew Connelly <maff@cpan.org>',
    PREREQ_PM     => {
        'App::Nopaste'  => '0.91',
    },
    ( $mm >= 6.31
        ? ( LICENSE => 'mit' )
        : ()
    ),
    ( $mm < 6.46
        ? ()
        : ( META_MERGE => {
                resources => {
                    license    => 'http://dev.perl.org/licenses/',
                    repository => 'https://github.com/Maffsie/App-Nopaste-Service-WerePaste',
                    bugtracker => 'https://github.com/Maffsie/App-Nopaste-Service-WerePaste/issues',
                },
                no_index => {directory => [qw/t/]},
            },
            META_ADD => {
                build_requires     => {},
                configure_requires => {},
                test_requires      => {
                    'Test::More'   => '0.47',
                },
            },
        )
    ),
    test => { TESTS => 't/*.t' }
);

