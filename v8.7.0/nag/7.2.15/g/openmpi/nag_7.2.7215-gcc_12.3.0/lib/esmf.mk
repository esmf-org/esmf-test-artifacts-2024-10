# ESMF application makefile fragment
#
# Use the following ESMF_ variables to compile and link
# your ESMF application against this ESMF build.
#
# !!! VERY IMPORTANT: If the location of this ESMF build is   !!!
# !!! changed, e.g. libesmf.a is copied to another directory, !!!
# !!! this file - esmf.mk - must be edited to adjust to the   !!!
# !!! correct new path                                        !!!
#
# Please see end of file for options used on this ESMF build
#

#----------------------------------------------
ESMF_VERSION_STRING=8.7.0
ESMF_VERSION_STRING_GIT=v8.7.0
#----------------------------------------------

ESMF_VERSION_MAJOR=8
ESMF_VERSION_MINOR=7
ESMF_VERSION_REVISION=0
ESMF_VERSION_PATCHLEVEL=0
ESMF_VERSION_PUBLIC='T'
ESMF_VERSION_BETASNAPSHOT='F'


ESMF_APPSDIR=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/apps/appsg/Linux.nag.64.openmpi.default
ESMF_LIBSDIR=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default
ESMF_ESMXDIR=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/src/addon/ESMX
ESMF_CMAKEDIR=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/cmake


ESMF_F90COMPILER=mpifort
ESMF_F90LINKER=mpifort

ESMF_F90COMPILEOPTS=-g -C=array -pic -DESMF_NAG_UNIX_MODULE -dusty -thread_safe
ESMF_F90COMPILEPATHS=-I/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/mod/modg/Linux.nag.64.openmpi.default -I/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/src/include 
ESMF_F90COMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0' -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_NO_OPENMP -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_g -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DS64=1 -DESMF_OS_Linux=1 -DESMF_COMM=openmpi -DESMF_DIR=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf -DESMF_NO_F2018ASSUMEDTYPE
ESMF_F90COMPILEFREECPP=
ESMF_F90COMPILEFREENOCPP=-free
ESMF_F90COMPILEFIXCPP=-fixed -fpp
ESMF_F90COMPILEFIXNOCPP=

ESMF_F90LINKOPTS=  -thread_safe -Wl,-Wl,,--no-as-needed
ESMF_F90LINKPATHS=-L/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default  -L/usr/local/other/gcc/12.3.0/lib64/../lib64/
ESMF_F90ESMFLINKPATHS=-L/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default
ESMF_F90LINKRPATHS=-Wl,-Wl,,-rpath,,/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default  -Wl,-Wl,,-rpath,,/usr/local/other/gcc/12.3.0/lib64/../lib64/
ESMF_F90ESMFLINKRPATHS=-Wl,-Wl,,-rpath,,/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default
ESMF_F90LINKLIBS=  -lrt -lstdc++ -ldl
ESMF_F90ESMFLINKLIBS=-lesmf   -lrt -lstdc++ -ldl

ESMF_CXXCOMPILER=mpicxx
ESMF_CXXLINKER=mpicxx

ESMF_CXXCOMPILEOPTS=-std=c++11 -g -Wall -Wextra -Wno-unused  -fPIC -pthread
ESMF_CXXCOMPILEPATHS= -I/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/src/include   -I/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/src/prologue/yaml-cpp/include
ESMF_CXXCOMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0' -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_NO_OPENMP -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_g -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DS64=1 -DESMF_OS_Linux=1 -DESMF_COMM=openmpi -DESMF_DIR=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf -D__SDIR__='' -DESMF_CXXSTD=11 -DESMF_NO_SIGUSR2 -DESMF_NO_F2018ASSUMEDTYPE

ESMF_CXXLINKOPTS=  -pthread -Wl,--no-as-needed
ESMF_CXXLINKPATHS=-L/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default 
ESMF_CXXESMFLINKPATHS=-L/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default
ESMF_CXXLINKRPATHS=-Wl,-rpath,/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default 
ESMF_CXXESMFLINKRPATHS=-Wl,-rpath,/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default
ESMF_CXXLINKLIBS= -lrt -ldl -m64 /discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran/quickfit.o -L/discover/swdev/gmao_SIteam/MPI/openmpi/4.1.6-SLES15/nag_7.2.7215-gcc_12.3.0/lib -lmpi_usempi -lmpi_mpifh -lmpi -Wl,-rpath,/discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran /discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran/libf72rts.so /discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran/libf72rts.a -lm -lpthread
ESMF_CXXESMFLINKLIBS=-lesmf  -lrt -ldl -m64 /discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran/quickfit.o -L/discover/swdev/gmao_SIteam/MPI/openmpi/4.1.6-SLES15/nag_7.2.7215-gcc_12.3.0/lib -lmpi_usempi -lmpi_mpifh -lmpi -Wl,-rpath,/discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran /discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran/libf72rts.so /discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran/libf72rts.a -lm -lpthread

ESMF_CCOMPILER=mpicc
ESMF_CLINKER=mpicc

ESMF_CCOMPILEOPTS=-std=c99 -g -fPIC
ESMF_CCOMPILEPATHS=-I/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/src/include   -I/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/build_config/Linux.nag.default
ESMF_CCOMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0' -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_NO_OPENMP -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_g -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DS64=1 -DESMF_OS_Linux=1 -DESMF_COMM=openmpi -DESMF_DIR=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf -D__SDIR__='' -DESMF_CSTD=99

ESMF_CLINKOPTS= 
ESMF_CLINKPATHS=-L/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default  -L/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default  -L/usr/local/other/gcc/12.3.0/lib64/../lib64/
ESMF_CESMFLINKPATHS=-L/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default
ESMF_CLINKRPATHS=-Wl,-rpath,/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default -Wl,-rpath,/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default -Wl,-rpath,/usr/local/other/gcc/12.3.0/lib64/../lib64/
ESMF_CESMFLINKRPATHS=-Wl,-rpath,/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default
ESMF_CLINKLIBS= -lrt -ldl -m64 /discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran/quickfit.o -L/discover/swdev/gmao_SIteam/MPI/openmpi/4.1.6-SLES15/nag_7.2.7215-gcc_12.3.0/lib -lmpi_usempi -lmpi_mpifh -lmpi -Wl,-rpath,/discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran /discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran/libf72rts.so /discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran/libf72rts.a -lm -lpthread   -lrt -lstdc++ -ldl
ESMF_CESMFLINKLIBS=-lesmf  -lrt -ldl -m64 /discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran/quickfit.o -L/discover/swdev/gmao_SIteam/MPI/openmpi/4.1.6-SLES15/nag_7.2.7215-gcc_12.3.0/lib -lmpi_usempi -lmpi_mpifh -lmpi -Wl,-rpath,/discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran /discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran/libf72rts.so /discover/nobackup/projects/gmao/SIteam/comp/SLES-15/nag/7.2.15/lib/NAG_Fortran/libf72rts.a -lm -lpthread   -lrt -lstdc++ -ldl

ESMF_SO_F90COMPILEOPTS=-pic
ESMF_SO_F90LINKOPTS=
ESMF_SO_F90LINKOPTSEXE=
ESMF_SO_CXXCOMPILEOPTS=-fPIC
ESMF_SO_CXXLINKOPTS=
ESMF_SO_CXXLINKOPTSEXE=
ESMF_SO_CCOMPILEOPTS=-fPIC
ESMF_SO_CLINKOPTS=
ESMF_SO_CLINKOPTSEXE=

ESMF_OPENMP_F90COMPILEOPTS= -openmp
ESMF_OPENMP_F90LINKOPTS= -openmp
ESMF_OPENMP_CXXCOMPILEOPTS= -fopenmp
ESMF_OPENMP_CXXLINKOPTS= -fopenmp

ESMF_OPENACC_F90COMPILEOPTS=
ESMF_OPENACC_F90LINKOPTS=
ESMF_OPENACC_CXXCOMPILEOPTS=
ESMF_OPENACC_CXXLINKOPTS=

# ESMF Tracing compile/link options
ESMF_TRACE_LDPRELOAD=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf/lib/libg/Linux.nag.64.openmpi.default/libesmftrace_preload.so
ESMF_TRACE_STATICLINKOPTS=-static -Wl,--wrap=c_esmftrace_notify_wrappers -Wl,--wrap=c_esmftrace_isinitialized -Wl,--wrap=write -Wl,--wrap=writev -Wl,--wrap=pwrite -Wl,--wrap=read -Wl,--wrap=open -Wl,--wrap=MPI_Allgather -Wl,--wrap=MPI_Allgatherv -Wl,--wrap=MPI_Allreduce -Wl,--wrap=MPI_Alltoall -Wl,--wrap=MPI_Alltoallv -Wl,--wrap=MPI_Alltoallw -Wl,--wrap=MPI_Barrier -Wl,--wrap=MPI_Bcast -Wl,--wrap=MPI_Bsend -Wl,--wrap=MPI_Gather -Wl,--wrap=MPI_Gatherv -Wl,--wrap=MPI_Iprobe -Wl,--wrap=MPI_Irecv -Wl,--wrap=MPI_Irsend -Wl,--wrap=MPI_Isend -Wl,--wrap=MPI_Issend -Wl,--wrap=MPI_Probe -Wl,--wrap=MPI_Recv -Wl,--wrap=MPI_Reduce -Wl,--wrap=MPI_Rsend -Wl,--wrap=MPI_Scan -Wl,--wrap=MPI_Scatter -Wl,--wrap=MPI_Scatterv -Wl,--wrap=MPI_Send -Wl,--wrap=MPI_Sendrecv -Wl,--wrap=MPI_Test -Wl,--wrap=MPI_Testall -Wl,--wrap=MPI_Testany -Wl,--wrap=MPI_Testsome -Wl,--wrap=MPI_Wait -Wl,--wrap=MPI_Waitall -Wl,--wrap=MPI_Waitany -Wl,--wrap=MPI_Waitsome -Wl,--wrap=mpi_allgather_ -Wl,--wrap=mpi_allgather__ -Wl,--wrap=mpi_allgatherv_ -Wl,--wrap=mpi_allgatherv__ -Wl,--wrap=mpi_allreduce_ -Wl,--wrap=mpi_allreduce__ -Wl,--wrap=mpi_alltoall_ -Wl,--wrap=mpi_alltoall__ -Wl,--wrap=mpi_alltoallv_ -Wl,--wrap=mpi_alltoallv__ -Wl,--wrap=mpi_alltoallw_ -Wl,--wrap=mpi_alltoallw__ -Wl,--wrap=mpi_barrier_ -Wl,--wrap=mpi_barrier__ -Wl,--wrap=mpi_bcast_ -Wl,--wrap=mpi_bcast__ -Wl,--wrap=mpi_bsend_ -Wl,--wrap=mpi_bsend__ -Wl,--wrap=mpi_exscan_ -Wl,--wrap=mpi_exscan__ -Wl,--wrap=mpi_gather_ -Wl,--wrap=mpi_gather__ -Wl,--wrap=mpi_gatherv_ -Wl,--wrap=mpi_gatherv__ -Wl,--wrap=mpi_iprobe_ -Wl,--wrap=mpi_iprobe__ -Wl,--wrap=mpi_irecv_ -Wl,--wrap=mpi_irecv__ -Wl,--wrap=mpi_irsend_ -Wl,--wrap=mpi_irsend__ -Wl,--wrap=mpi_isend_ -Wl,--wrap=mpi_isend__ -Wl,--wrap=mpi_issend_ -Wl,--wrap=mpi_issend__ -Wl,--wrap=mpi_probe_ -Wl,--wrap=mpi_probe__ -Wl,--wrap=mpi_recv_ -Wl,--wrap=mpi_recv__ -Wl,--wrap=mpi_reduce_ -Wl,--wrap=mpi_reduce__ -Wl,--wrap=mpi_reduce_scatter_ -Wl,--wrap=mpi_reduce_scatter__ -Wl,--wrap=mpi_rsend_ -Wl,--wrap=mpi_rsend__ -Wl,--wrap=mpi_scatter_ -Wl,--wrap=mpi_scatter__ -Wl,--wrap=mpi_scatterv_ -Wl,--wrap=mpi_scatterv__ -Wl,--wrap=mpi_scan_ -Wl,--wrap=mpi_scan__ -Wl,--wrap=mpi_send_ -Wl,--wrap=mpi_send__ -Wl,--wrap=mpi_sendrecv_ -Wl,--wrap=mpi_sendrecv__ -Wl,--wrap=mpi_test_ -Wl,--wrap=mpi_test__ -Wl,--wrap=mpi_testall_ -Wl,--wrap=mpi_testall__ -Wl,--wrap=mpi_testany_ -Wl,--wrap=mpi_testany__ -Wl,--wrap=mpi_testsome_ -Wl,--wrap=mpi_testsome__ -Wl,--wrap=mpi_wait_ -Wl,--wrap=mpi_wait__ -Wl,--wrap=mpi_waitall_ -Wl,--wrap=mpi_waitall__ -Wl,--wrap=mpi_waitany_ -Wl,--wrap=mpi_waitany__
ESMF_TRACE_STATICLINKLIBS=-lesmftrace_static
ESMF_TRACE_DYNAMICLINKLIBS=-lesmftrace_preload
ESMF_F90ESMFPRELOADLINKLIBS=-lesmf -lesmftrace_preload   -lrt -lstdc++ -ldl

# Internal ESMF variables, do NOT depend on these!

ESMF_INTERNAL_DIR=/discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf
ESMF_INTERNAL_MPIRUN="mpirun "

#
# !!! The following options were used on this ESMF build !!!
#
# ESMF_DIR: /discover/nobackup/projects/gmao/SIteam/ESMF_Testing/nag_7.2.15_openmpi_g_v8.7.0/esmf
# ESMF_OS: Linux
# ESMF_MACHINE: x86_64
# ESMF_ABI: 64
# ESMF_COMPILER: nag
# ESMF_BOPT: g
# ESMF_OPTLEVEL: 0
# ESMF_COMM: openmpi
# ESMF_SITE: default
# ESMF_PTHREADS: ON
# ESMF_OPENMP: OFF
# ESMF_OPENACC: OFF
# ESMF_ARRAY_LITE: FALSE
# ESMF_NO_INTEGER_1_BYTE: TRUE
# ESMF_NO_INTEGER_2_BYTE: TRUE
# ESMF_FORTRANSYMBOLS: default
# ESMF_MAPPER_BUILD: OFF
# ESMF_AUTO_LIB_BUILD: ON
# ESMF_DEFER_LIB_BUILD: ON
# ESMF_SHARED_LIB_BUILD: ON
# 
# ESMF environment variables pointing to 3rd party software:
# ESMF_MOAB:              internal
# ESMF_LAPACK:            internal
# ESMF_ACC_SOFTWARE_STACK:            none
# ESMF_YAMLCPP:           internal
#
# * Compilers, Linkers, Flags, and Libraries *
# Location of the preprocessor:      /usr/local/other/gcc/12.3.0/bin/gcc
# Location of the Fortran compiler:  /discover/swdev/gmao_SIteam/MPI/openmpi/4.1.6-SLES15/nag_7.2.7215-gcc_12.3.0/bin/mpifort
# Location of the Fortran linker:    /discover/swdev/gmao_SIteam/MPI/openmpi/4.1.6-SLES15/nag_7.2.7215-gcc_12.3.0/bin/mpifort
# Location of the C++ compiler:      /discover/swdev/gmao_SIteam/MPI/openmpi/4.1.6-SLES15/nag_7.2.7215-gcc_12.3.0/bin/mpicxx
# Location of the C++ linker:        /discover/swdev/gmao_SIteam/MPI/openmpi/4.1.6-SLES15/nag_7.2.7215-gcc_12.3.0/bin/mpicxx
# Location of the C compiler:        /discover/swdev/gmao_SIteam/MPI/openmpi/4.1.6-SLES15/nag_7.2.7215-gcc_12.3.0/bin/mpicc
# Location of the C linker:          /discover/swdev/gmao_SIteam/MPI/openmpi/4.1.6-SLES15/nag_7.2.7215-gcc_12.3.0/bin/mpicc
#
