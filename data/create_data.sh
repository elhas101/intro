for i in `seq 1 100`; do if [ $i -lt 10 ]; then touch "00"$i".dat"; elif [ $i -lt 100 ]; then touch "0"$i".dat"; elif [ $i -eq 100 ]; then touch $i".dat"; fi; done
