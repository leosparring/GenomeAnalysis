set terminal canvas jsdir ""
set output "/home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190411_quast_nanopore_vs_paper/contigs_reports/nucmer_output/contigs.html"
set xtics rotate ( \
 "0" 0, \
 "400000" 400000, \
 "800000" 800000, \
 "1200000" 1200000, \
 "1600000" 1600000, \
 "2000000" 2000000, \
 "2400000" 2400000, \
 "2800000" 2800000, \
 "" 3168410 \
)
set ytics ( \
 "0" 0, \
 "400000" 400000, \
 "800000" 800000, \
 "1200000" 1200000, \
 "1600000" 1600000, \
 "2000000" 2000000, \
 "2400000" 2400000, \
 "2800000" 2800000, \
 "" 3135284 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:3168410]
set yrange [1:3135284]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190411_quast_nanopore_vs_paper/contigs_reports/nucmer_output/contigs.fplot" title "FWD" w lp ls 1, \
 "/home/lesp0343/GenomeAnalysis/genome_analysis/analyses/02_genome_assembly/190411_quast_nanopore_vs_paper/contigs_reports/nucmer_output/contigs.rplot" title "REV" w lp ls 2