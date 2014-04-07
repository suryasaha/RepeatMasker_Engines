cp ../data/ch01-4.tar.bz .
tar -jxvf ch01-4.tar.bz
rm -f ch01-4.tar.bz

chr=1
while [ $chr -le 4 ] 
do
	RepeatMasker -e hmmer -pa 30 -nolow -s -gccalc -no_is -norna -species "human" -dir GRch38 ch0"$chr".fasta

	rm -f ch0"$chr".fasta

	chr=$(($chr + 1))
done

