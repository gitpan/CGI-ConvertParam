package CGI::ConvertParam::EUC;
use base 'CGI::ConvertParam';
use Jcode;
use strict;

sub initialize
{
    my $self = shift;
    $self->convert_all_param;
}


sub do_convert_all_param
{
    my $self    = shift;
    my $strings = shift;
    return Jcode->new($strings)->h2z->euc;
}

1;
__END__
