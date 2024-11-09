#! /bin/bash

function _gromacs_bin_dir() {
  local simdflavor
  local uname=$(uname -m)
  if [[ "$uname" == "arm64" || "$uname" == "aarch64" ]]; then
    # Assume ARM Mac/Linux
    test -d "/usr/local/miniforge3/envs/gromacs/bin.ARM_NEON_ASIMD" &&       simdflavor='ARM_NEON_ASIMD'
  elif [[ "$uname" == "ppc64le" ]]; then
    # Assume PowerPC Linux
    test -d "/usr/local/miniforge3/envs/gromacs/bin.IBM_VSX" &&       simdflavor='IBM_VSX'
  else
    simdflavor='SSE2'
    case $( cat /proc/cpuinfo | grep -m1 '^flags' ) in
      *\ avx2\ * | *avx2_0*)
        test -d "/usr/local/miniforge3/envs/gromacs/bin.AVX2_256" &&           simdflavor='AVX2_256'
      ;;
      *\ avx\ * | *avx1_0*)
        test -d "/usr/local/miniforge3/envs/gromacs/bin.AVX_256" &&           simdflavor='AVX_256'
    esac
  fi
  printf '%s' "/usr/local/miniforge3/envs/gromacs/bin.${simdflavor}"
}

. "$( _gromacs_bin_dir )/GMXRC" "${@}"
