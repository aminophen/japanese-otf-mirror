#!/usr/bin/perl

=head1 NAME

mktfm_sp.pl

=head1 USAGE

script/mktfm_sp.pl

=head1 NOTE

This software is a part of otfbeta-uptex (a.k.a. japanese-otf-uptex).

=cut

use FindBin;
use lib "$FindBin::Bin";
use MakeSPList;

$multi=3;
@tex_tfm_h=(0x00, 0x0B, 0x00, 0x01, 0x00, 0x2B, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x0E, 0x54, 0x45, 0x58, 0x20, 0x4B, 0x41, 0x4E, 0x4A, 0x49, 0x20, 0x54, 0x45, 0x58, 0x54, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x4F, 0x54, 0x46, 0x20, 0x4B, 0x41, 0x4E, 0x4A, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x14, 0x7B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xEB, 0x85, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x99, 0x9A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x33, 0x33, 0x00, 0x02, 0x00, 0x00);
@tex_tfm_v=(0x00, 0x09, 0x00, 0x01, 0x00, 0x2B, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x0E, 0x54, 0x45, 0x58, 0x20, 0x4B, 0x41, 0x4E, 0x4A, 0x49, 0x20, 0x54, 0x45, 0x58, 0x54, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x4F, 0x54, 0x46, 0x20, 0x4B, 0x41, 0x4E, 0x4A, 0x49, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x99, 0x9A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x33, 0x33, 0x00, 0x02, 0x00, 0x00);
@dvips_tfm_h=(0x00, 0x0B, 0x00, 0x01, 0x00, 0x1B, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x14, 0x7B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xEB, 0x85, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
@dvips_tfm_v=(0x00, 0x09, 0x00, 0x01, 0x00, 0x1B, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);

opendir(TFM, "tfm") || mkdir("tfm",0755) || die "cannot mkdir tfm";

my @face = qw/mr gr mb gb mgr ml ge/;
my @lang = qw/j t c k/;
my @dir = qw/h v/;
my %font_id = qw/1b g      1d h 1e i 1f j
  20 k 21 l 22 m 23 n 24 o 25 p 26 q 27 r
  28 s 29 t 2a u 2b v 2c w 2d x 2e y 2f z/;

&MakeSPList::make_sp_char_list(@lang);

&make_utf_tfm;
&make_multi_utf_tfm;
&make_unified_utf_tfm;

sub make_utf_tfm {
	foreach $lang ($lang[0]){ #language
		foreach $face (@face){ #face
			foreach $dir (@dir){ #direction
				&maketfm_body($face, $dir, $lang);
			}
		}
	}
}
sub make_multi_utf_tfm {
	foreach $lang (@lang[1..$multi]){ #language
		foreach $face (@face[0..1]){ #face
			foreach $dir (@dir){ #direction
				&maketfm_body($face, $dir, $lang);
			}
		}
	}
}
sub make_unified_utf_tfm {
		foreach $face (@face[0..1]){ #face
			foreach $dir (@dir){ #direction
				&maketfm_body($face, $dir, @lang);
			}
		}
}

sub maketfm_body {
	my ($face, $dir, @ln)=@_;
=comment
		## mktfm.pl does same procedure.
		$filename="utf$lang$face".sprintf("%x",$first_hex)."-$dir";
		open(TEXTFM,">tfm/$filename.tfm") || die "Can't make \'tfm/$filename.tfm\'!\n";
		binmode(TEXTFM);
		if ($i==0) {
			foreach $binary(@tex_tfm_h) {$_ = pack("C", $binary);print TEXTFM "$_";}
		}elsif ($i==1){
			foreach $binary(@tex_tfm_v) {$_ = pack("C", $binary);print TEXTFM "$_";}
		}
		close(TEXTFM);
=cut
	my $lang = join ',', @ln;
	my @exist_head=@{$MakeSPList::r_exist_head->{$lang}};

	foreach $first_hex (0x1b, 0x1d .. 0x2f) { # U+1Cxxx : not defined yet
		next if (!$exist_head[$first_hex]);

		$id = $font_id{sprintf("%x", $first_hex)};
		$filename= (@ln>1) ? "utf$face$id-$dir" : "utf$lang$face$id-$dir";
		open(TEXTFM,">tfm/$filename.tfm") || die "Can't make \'tfm/$filename.tfm\'!\n";
		binmode(TEXTFM);
		if ($dir eq 'h') {
			foreach $binary(@tex_tfm_h) {$_ = pack("C", $binary);print TEXTFM "$_";}
		}elsif ($dir eq 'v'){
			foreach $binary(@tex_tfm_v) {$_ = pack("C", $binary);print TEXTFM "$_";}
		}
		close(TEXTFM);
	}
}
