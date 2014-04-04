chr=1
while [ $chr -le 9 ] 
do
cp /export/species/Oryza_sativa/ssp_japonica_Nipponbare/build5/chr0"$chr".fasta.gz .
gunzip chr0"$chr".fasta.gz
seqstat.pl chr0"$chr".fasta | head -7 >> chrStats.txt
rm -f chr0"$chr".fasta

chr=$(($chr + 1))

done

chr=10
while [ $chr -le 12 ] 
do
cp /export/species/Oryza_sativa/ssp_japonica_Nipponbare/build5/chr"$chr".fasta.gz .
gunzip chr"$chr".fasta.gz
seqstat.pl chr"$chr".fasta | head -7 >> chrStats.txt
rm -f chr"$chr".fasta

chr=$(($chr + 1))

done
