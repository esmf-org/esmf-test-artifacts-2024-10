#!/bin/bash -l
#SBATCH --account=da-cpu
#SBATCH -o /work/noaa/da/mpotts/sandbox/gfortran_12.2.0_mpiuni_O_develop/test.bat_%j.o
#SBATCH -e /work/noaa/da/mpotts/sandbox/gfortran_12.2.0_mpiuni_O_develop/test.bat_%j.e
#SBATCH --time=2:00:00
#SBATCH --partition=orion
#SBATCH --qos=batch
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=40
#SBATCH --exclusive
export JOBID=$SLURM_JOBID


module load cmake python/3.10.8
module load gcc/12.2.0 

set -x
export ESMF_DIR=/work/noaa/da/mpotts/sandbox/gfortran_12.2.0_mpiuni_O_develop/esmf
export ESMF_COMPILER=gfortran
export ESMF_COMM=mpiuni
export ESMF_BOPT='O'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
export ESMF_MPIRUN=/work/noaa/da/mpotts/sandbox/gfortran_12.2.0_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni/mpirun
module list >& /work/noaa/da/mpotts/sandbox/gfortran_12.2.0_mpiuni_O_develop/module-test.log
export WORK_ROOT=/work/noaa/da/mpotts/sandbox/gfortran_12.2.0_mpiuni_O_develop
export TEMP_ROOT=/work/noaa/da/mpotts/sandbox/gfortran_12.2.0_mpiuni_O_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
make install 2>&1| tee $WORK_ROOT/install.log
make all_tests 2>&1| tee $WORK_ROOT/test.log
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
