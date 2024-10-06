#!/bin/bash -l
#SBATCH --account=s1873
#SBATCH -o /discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/build.bat_%j.o
#SBATCH -e /discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/build.bat_%j.e
#SBATCH --time=1:00:00
#SBATCH --partition=compute
#SBATCH -C mil
#SBATCH --qos=allnccs
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=120
#SBATCH --exclusive
export JOBID=$SLURM_JOBID


module use /discover/swdev/gmao_SIteam/modulefiles-SLES15
module load cmake/3.30.3 comp/gcc/12.3.0
module load comp/nag/7.2-7215 mpi/openmpi/4.1.6/nag_7.2.7215-gcc_12.3.0

set -x
export ESMF_DIR=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf
export ESMF_COMPILER=nag
export ESMF_COMM=openmpi
export ESMF_BOPT='g'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/module-build.log
export WORK_ROOT=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0
export TEMP_ROOT=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
set -o pipefail
make info 2>&1| tee $WORK_ROOT/info.log
make -j 120 2>&1| tee $WORK_ROOT/build.log
