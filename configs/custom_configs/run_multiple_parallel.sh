#!/bin/bash
# Script to simplify initialization of gem5 runs
# Yashas M Salian (yashas.msalian@iitb.ac.in)

# Variable to hold root of gem5 folder
gem5folder=/home/yashas/EE748/gem5-EE748

# Variable to hold root of SPEC executables
specfolder=/home/yashas/SPEC_binaries/benchspec/CPU2006

# Variable to hold simulation results directory
resultfolder=/simulation_results/A4/test

# Variable to obtain mispredict hints from
hintfolder=/simulation_results/A4/test

# Make copy of misprediction hints in each benchmark folder
cp $gem5folder$hintfolder/astar/mispredictions.txt $specfolder/473.astar/exe
# cp $gem5folder$hintfolder/hmmer/mispredictions.txt $specfolder/456.hmmer/exe
# cp $gem5folder$hintfolder/milc/mispredictions.txt $specfolder/433.milc/exe
# cp $gem5folder$hintfolder/bzip2/mispredictions.txt $specfolder/401.bzip2/exe
# cp $gem5folder$hintfolder/lbm/mispredictions.txt $specfolder/470.lbm/exe
# cp $gem5folder$hintfolder/namd/mispredictions.txt $specfolder/444.namd/exe
# cp $gem5folder$hintfolder/gamess/mispredictions.txt $specfolder/416.gamess/exe
# cp $gem5folder$hintfolder/mcf/mispredictions.txt $specfolder/429.mcf/exe
# cp $gem5folder$hintfolder/perlbench/mispredictions.txt $specfolder/400.perlbench/exe

# Move to astar folder
cd $specfolder/473.astar/exe
($gem5folder/build/X86/gem5.opt --outdir=$gem5folder$resultfolder/astar $gem5folder/configs/custom_configs/ee748_assign2_1.py 180800000000 200000000 50000000 astar_base.gcc44-64bit BigLakes2048.cfg)&

# # Move to hmmer folder
# cd $specfolder/456.hmmer/exe
# ($gem5folder/build/X86/gem5.opt --outdir=$gem5folder$resultfolder/hmmer $gem5folder/configs/custom_configs/ee748_assign2_1.py 15800000000 200000000 50000000 hmmer_base.gcc44-64bit nph3.hmm)&

# # Move to milc folder
# cd $specfolder/433.milc/exe
# ($gem5folder/build/X86/gem5.opt --outdir=$gem5folder$resultfolder/milc $gem5folder/configs/custom_configs/ee748_assign2_1.py 7800000000 200000000 50000000 milc_base.gcc44-64bit < su3imp.in)&

# # Move to bzip2 folder
# cd $specfolder/401.bzip2/exe
# ($gem5folder/build/X86/gem5.opt --outdir=$gem5folder$resultfolder/bzip2 $gem5folder/configs/custom_configs/ee748_assign2_1.py 54800000000 200000000 50000000 bzip2_base.gcc44-64bit)&

# # Move to lbm folder
# cd $specfolder/470.lbm/exe
# ($gem5folder/build/X86/gem5.opt --outdir=$gem5folder$resultfolder/lbm $gem5folder/configs/custom_configs/ee748_assign2_1.py 92800000000 200000000 50000000 lbm_base.gcc44-64bit 3000 reference.dat 0 0 100_100_130_ldc.of)&

# # Wait till above processes complete
# wait

# # Move to namd folder
# cd $specfolder/444.namd/exe
# ($gem5folder/build/X86/gem5.opt --outdir=$gem5folder$resultfolder/namd $gem5folder/configs/custom_configs/ee748_assign2_1.py 1645800000000 200000000 50000000 namd_base.gcc44-64bit "--input" namd.input "--iterations" 38)&  

# # Move to gamess folder
# cd $specfolder/416.gamess/exe
# ($gem5folder/build/X86/gem5.opt --outdir=$gem5folder$resultfolder/gamess $gem5folder/configs/custom_configs/ee748_assign2_1.py 433800000000 200000000 50000000 gamess_base.gcc44-64bit < cytosine.2.config)&

# # Move to mcf folder
# cd $specfolder/429.mcf/exe
# ($gem5folder/build/X86/gem5.opt --outdir=$gem5folder$resultfolder/mcf $gem5folder/configs/custom_configs/ee748_assign2_1.py 305800000000 200000000 50000000 mcf_base.gcc44-64bit inp.in)&

# # Move to perlbench folder
# cd $specfolder/400.perlbench/exe
# ($gem5folder/build/X86/gem5.opt --outdir=$gem5folder$resultfolder/perlbench $gem5folder/configs/custom_configs/ee748_assign2_1.py 450800000000 200000000 50000000 perlbench_base.gcc44-64bit splitmail.pl 1600 12 26 16 4500)&

# Wait till all processes are complete
wait

# # Move all misprediction hint files to their corresponding result directories
# mv $specfolder/473.astar/exe/mispredictions.txt $gem5folder$resultfolder/astar
# mv $specfolder/456.hmmer/exe/mispredictions.txt $gem5folder$resultfolder/hmmer
# mv $specfolder/433.milc/exe/mispredictions.txt $gem5folder$resultfolder/milc
# mv $specfolder/401.bzip2/exe/mispredictions.txt $gem5folder$resultfolder/bzip2
# mv $specfolder/470.lbm/exe/mispredictions.txt $gem5folder$resultfolder/lbm
# mv $specfolder/444.namd/exe/mispredictions.txt $gem5folder$resultfolder/namd
# mv $specfolder/416.gamess/exe/mispredictions.txt $gem5folder$resultfolder/gamess
# mv $specfolder/429.mcf/exe/mispredictions.txt $gem5folder$resultfolder/mcf
# mv $specfolder/400.perlbench/exe/mispredictions.txt $gem5folder$resultfolder/perlbench

# Remove copies of misprediction hints
rm $specfolder/473.astar/exe/mispredictions.txt
# rm $specfolder/456.hmmer/exe/mispredictions.txt
# rm $specfolder/433.milc/exe/mispredictions.txt
# rm $specfolder/401.bzip2/exe/mispredictions.txt
# rm $specfolder/470.lbm/exe/mispredictions.txt
# rm $specfolder/444.namd/exe/mispredictions.txt
# rm $specfolder/416.gamess/exe/mispredictions.txt
# rm $specfolder/429.mcf/exe/mispredictions.txt
# rm $specfolder/400.perlbench/exe/mispredictions.txt
