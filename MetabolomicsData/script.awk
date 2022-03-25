k=`awk '{print NR}' idstest.csv| sed -n '$p'`
for ((i=2;i<=$k;i++)); do j=`awk -v i="$i" 'NR==i{print $0}' idstest.csv`;  sed -n "/$j/,/+++/p" hong_saliva_GNPS_copy.mgf; done > test.mgf
