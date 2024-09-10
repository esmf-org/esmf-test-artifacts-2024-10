#!/bin/bash -l
#SBATCH --account=da-cpu
#SBATCH -o /work/noaa/da/mpotts/sandbox/gfortran_12.2.0_openmpi_O_develop/build.bat_%j.o
#SBATCH -e /work/noaa/da/mpotts/sandbox/gfortran_12.2.0_openmpi_O_develop/build.bat_%j.e
#SBATCH --time=1:00:00
#SBATCH --partition=orion
#SBATCH --qos=batch
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=40
#SBATCH --exclusive
export JOBID=$SLURM_JOBID


module load cmake python/3.10.8
module load gcc/12.2.0 openmpi/4.1.4

set -x
export ESMF_MPIRUN=mpirun.srun
export ESMF_DIR=/work/noaa/da/mpotts/sandbox/gfortran_12.2.0_openmpi_O_develop/esmf
export ESMF_COMPILER=gfortran
export ESMF_COMM=openmpi
export ESMF_BOPT='O'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /work/noaa/da/mpotts/sandbox/gfortran_12.2.0_openmpi_O_develop/module-build.log
export WORK_ROOT=/work/noaa/da/mpotts/sandbox/gfortran_12.2.0_openmpi_O_develop
export TEMP_ROOT=/work/noaa/da/mpotts/sandbox/gfortran_12.2.0_openmpi_O_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
set -o pipefail
make info 2>&1| tee $WORK_ROOT/info.log
make -j 40 2>&1| tee $WORK_ROOT/build.log
