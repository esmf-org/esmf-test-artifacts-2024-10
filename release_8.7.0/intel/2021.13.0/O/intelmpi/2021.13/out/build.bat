#!/bin/bash -l
#SBATCH --account=s1873
#SBATCH -o /discover/nobackup/projects/gmao/SIteam/ESMF_Testing/intel_2021.13.0_intelmpi_O_release_8.7.0/build.bat_%j.o
#SBATCH -e /discover/nobackup/projects/gmao/SIteam/ESMF_Testing/intel_2021.13.0_intelmpi_O_release_8.7.0/build.bat_%j.e
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
module load comp/intel/2024.2.0 mpi/impi/2021.13

set -x
export I_MPI_OFI_PROVIDER=psm3
export I_MPI_FABRICS=shm:ofi
export I_MPI_CXX=icpx
export I_MPI_CC=icx
export I_MPI_F90=ifort
export ESMF_DIR=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/intel_2021.13.0_intelmpi_O_release_8.7.0/esmf
export ESMF_COMPILER=intel
export ESMF_COMM=intelmpi
export ESMF_BOPT='O'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /discover/nobackup/projects/gmao/SIteam/ESMF_Testing/intel_2021.13.0_intelmpi_O_release_8.7.0/module-build.log
export WORK_ROOT=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/intel_2021.13.0_intelmpi_O_release_8.7.0
export TEMP_ROOT=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/intel_2021.13.0_intelmpi_O_release_8.7.0
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
set -o pipefail
make info 2>&1| tee $WORK_ROOT/info.log
make -j 120 2>&1| tee $WORK_ROOT/build.log
