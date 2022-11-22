
        ==========     _____ _    _ ____  _____  ______          _____  
        =====         / ____| |  | |  _ \|  __ \|  ____|   /\   |  __ \ 
          =====      | (___ | |  | | |_) | |__) | |__     /  \  | |  | |
            ====      \___ \| |  | |  _ <|  _  /|  __|   / /\ \ | |  | |
              ====    ____) | |__| | |_) | | \ \| |____ / ____ \| |__| |
        ==========   |_____/ \____/|____/|_|  \_\______/_/    \_\_____/
	  v2.0.1

//========================== featureCounts setting ===========================\\
||                                                                            ||
||             Input files : 12 BAM files                                     ||
||                           o HER21_sorted.bam                               ||
||                           o HER22_sorted.bam                               ||
||                           o HER23_sorted.bam                               ||
||                           o NonTNBC1_sorted.bam                            ||
||                           o NonTNBC2_sorted.bam                            ||
||                           o NonTNBC3_sorted.bam                            ||
||                           o Normal1_sorted.bam                             ||
||                           o Normal2_sorted.bam                             ||
||                           o Normal3_sorted.bam                             ||
||                           o TNBC1_sorted.bam                               ||
||                           o TNBC2_sorted.bam                               ||
||                           o TNBC3_sorted.bam                               ||
||                                                                            ||
||             Output file : feature_counts.txt                               ||
||                 Summary : feature_counts.txt.summary                       ||
||              Annotation : genome.gtf (GTF)                                 ||
||      Dir for temp files : /scratch/9593735                                 ||
||                                                                            ||
||                 Threads : 6                                                ||
||                   Level : meta-feature level                               ||
||              Paired-end : yes                                              ||
||      Multimapping reads : not counted                                      ||
|| Multi-overlapping reads : not counted                                      ||
||   Min overlapping bases : 1                                                ||
||                                                                            ||
||          Chimeric reads : not counted                                      ||
||        Both ends mapped : not required                                     ||
||                                                                            ||
\\============================================================================//

//================================= Running ==================================\\
||                                                                            ||
|| Load annotation file genome.gtf ...                                        ||
||    Features : 1642501                                                      ||
||    Meta-features : 62703                                                   ||
||    Chromosomes/contigs : 47                                                ||
||                                                                            ||
|| Process BAM file HER21_sorted.bam...                                       ||
||    Paired-end reads are included.                                          ||
||    Total alignments : 275007729                                            ||
||    Successfully assigned alignments : 10914836 (4.0%)                      ||
||    Running time : 64.37 minutes                                            ||
||                                                                            ||
|| Process BAM file HER22_sorted.bam...                                       ||
||    Paired-end reads are included.                                          ||
||    Total alignments : 281226192                                            ||
||    Successfully assigned alignments : 15401627 (5.5%)                      ||
||    Running time : 62.34 minutes                                            ||
||                                                                            ||
|| Process BAM file HER23_sorted.bam...                                       ||
||    Paired-end reads are included.                                          ||
||    Total alignments : 235915594                                            ||
||    Successfully assigned alignments : 10984449 (4.7%)                      ||
||    Running time : 46.87 minutes                                            ||
||                                                                            ||
|| Process BAM file NonTNBC1_sorted.bam...                                    ||
||    Paired-end reads are included.                                          ||
||    Total alignments : 237310441                                            ||
||    Successfully assigned alignments : 20655129 (8.7%)                      ||
||    Running time : 43.30 minutes                                            ||
||                                                                            ||
|| Process BAM file NonTNBC2_sorted.bam...                                    ||
||    Paired-end reads are included.                                          ||
||    Total alignments : 214642994                                            ||
||    Successfully assigned alignments : 11607246 (5.4%)                      ||
||    Running time : 33.72 minutes                                            ||
||                                                                            ||
|| Process BAM file NonTNBC3_sorted.bam...                                    ||
||    Paired-end reads are included.                                          ||
||    Total alignments : 230341869                                            ||
||    Successfully assigned alignments : 12451490 (5.4%)                      ||
||    Running time : 36.51 minutes                                            ||
||                                                                            ||
|| Process BAM file Normal1_sorted.bam...                                     ||
||    Paired-end reads are included.                                          ||
||    Total alignments : 20450270                                             ||
||    Successfully assigned alignments : 12393175 (60.6%)                     ||
||    Running time : 0.46 minutes                                             ||
||                                                                            ||
|| Process BAM file Normal2_sorted.bam...                                     ||
||    Paired-end reads are included.                                          ||
||    Total alignments : 40864568                                             ||
||    Successfully assigned alignments : 26406724 (64.6%)                     ||
||    Running time : 0.87 minutes                                             ||
||                                                                            ||
|| Process BAM file Normal3_sorted.bam...                                     ||
||    Paired-end reads are included.                                          ||
||    Total alignments : 42725766                                             ||
||    Successfully assigned alignments : 31491802 (73.7%)                     ||
||    Running time : 0.74 minutes                                             ||
||                                                                            ||
|| Process BAM file TNBC1_sorted.bam...                                       ||
||    Paired-end reads are included.                                          ||
||    Total alignments : 155358047                                            ||
||    Successfully assigned alignments : 10913761 (7.0%)                      ||
||    Running time : 19.44 minutes                                            ||
||                                                                            ||
|| Process BAM file TNBC2_sorted.bam...                                       ||
||    Paired-end reads are included.                                          ||
||    Total alignments : 216618088                                            ||
||    Successfully assigned alignments : 9015757 (4.2%)                       ||
||    Running time : 38.48 minutes                                            ||
||                                                                            ||
|| Process BAM file TNBC3_sorted.bam...                                       ||
||    Paired-end reads are included.                                          ||
||    Total alignments : 219579232                                            ||
||    Successfully assigned alignments : 9765423 (4.4%)                       ||
||    Running time : 37.54 minutes                                            ||
||                                                                            ||
|| Write the final count table.                                               ||
|| Write the read assignment summary.                                         ||
||                                                                            ||
|| Summary of counting results can be found in file "feature_counts.txt.summ  ||
|| ary"                                                                       ||
||                                                                            ||
\\============================================================================//

