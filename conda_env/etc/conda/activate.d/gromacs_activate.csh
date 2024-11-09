#! /bin/tcsh

setenv uname_m `uname -m`
if ( ( $uname_m == "arm64" || $uname_m == "aarch64") && -d "/usr/local/miniforge3/envs/gromacs/bin.ARM_NEON_ASIMD" ) then
   setenv simdflavor ARM_NEON_ASIMD
else if ( $uname_m == "ppc64le" && -d "/usr/local/miniforge3/envs/gromacs/bin.IBM_VSX" ) then
   setenv simdflavor IBM_VSX
else

    setenv hwlist `cat /proc/cpuinfo | grep -m1 '^flags'`

    if ( `echo $hwlist | grep -c 'avx512f'` > 0 && -d "/usr/local/miniforge3/envs/gromacs/bin.AVX_512" && `"/usr/local/miniforge3/envs/gromacs/bin.AVX_512/identifyavx512fmaunits" | grep -c 2` > 0 ) then
        setenv simdflavor AVX_512
    else 
        if ( `echo $hwlist | grep -c avx2` > 0 && -d "/usr/local/miniforge3/envs/gromacs/bin.AVX2_256" ) then
            setenv simdflavor AVX2_256
        else
            if ( `echo $hwlist | grep -c avx` > 0 && -d "/usr/local/miniforge3/envs/gromacs/bin.AVX_256" ) then
                setenv simdflavor AVX_256
            else
                setenv simdflavor SSE2
            endif
        endif
    endif
endif

source "/usr/local/miniforge3/envs/gromacs/bin.$simdflavor/GMXRC"

