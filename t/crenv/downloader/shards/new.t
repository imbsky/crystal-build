use strict;
use warnings;
use utf8;

use t::Util;
use Crenv::Downloader::Shards;

subtest basic => sub {
    my $self = Crenv::Downloader::Shards->new(
        fetcher   => 'fetcher',
        cache_dir => 'cache_dir',
    );

    isa_ok $self, 'Crenv::Downloader::Shards';

    is $self->{fetcher}, 'fetcher';
    is $self->{fetcher}, $self->fetcher;

    is $self->{cache_dir}, 'cache_dir';
    is $self->{cache_dir}, $self->cache_dir;
};

done_testing;
