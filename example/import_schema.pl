use DBIx::Class::Schema::Loader qw/make_schema_at/;

make_schema_at(
    'Crawler::DBIs::Schema',
    {
    	debug => 1,
    	dump_directory => '/root/KingCrawler/lib/Crawler/DBIs',
    },
    [
        'dbi:mysql:database=AMMS;host=localhost;port=3306',
        'root',
        'root',
    ],
);

