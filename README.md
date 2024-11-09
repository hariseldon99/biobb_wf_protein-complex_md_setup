[![](https://readthedocs.org/projects/biobb-wf-protein-complex-md-setup/badge/?version=latest)](https://biobb-wf-protein-complex-md-setup.readthedocs.io/en/latest/?badge=latest)
[![Powered by MDAnalysis](https://img.shields.io/badge/powered%20by-MDAnalysis-orange.svg?logoWidth=16&logo=data:image/x-icon;base64,AAABAAEAEBAAAAEAIAAoBAAAFgAAACgAAAAQAAAAIAAAAAEAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJD+XwCY/fEAkf3uAJf97wGT/a+HfHaoiIWE7n9/f+6Hh4fvgICAjwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACT/yYAlP//AJ///wCg//8JjvOchXly1oaGhv+Ghob/j4+P/39/f3IAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJH8aQCY/8wAkv2kfY+elJ6al/yVlZX7iIiI8H9/f7h/f38UAAAAAAAAAAAAAAAAAAAAAAAAAAB/f38egYF/noqAebF8gYaagnx3oFpUUtZpaWr/WFhY8zo6OmT///8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgICAn46Ojv+Hh4b/jouJ/4iGhfcAAADnAAAA/wAAAP8AAADIAAAAAwCj/zIAnf2VAJD/PAAAAAAAAAAAAAAAAICAgNGHh4f/gICA/4SEhP+Xl5f/AwMD/wAAAP8AAAD/AAAA/wAAAB8Aov9/ALr//wCS/Z0AAAAAAAAAAAAAAACBgYGOjo6O/4mJif+Pj4//iYmJ/wAAAOAAAAD+AAAA/wAAAP8AAABhAP7+FgCi/38Axf4fAAAAAAAAAAAAAAAAiIiID4GBgYKCgoKogoB+fYSEgZhgYGDZXl5e/m9vb/9ISEjpEBAQxw8AAFQAAAAAAAAANQAAADcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjo6Mb5iYmP+cnJz/jY2N95CQkO4pKSn/AAAA7gAAAP0AAAD7AAAAhgAAAAEAAAAAAAAAAACL/gsAkv2uAJX/QQAAAAB9fX3egoKC/4CAgP+NjY3/c3Nz+wAAAP8AAAD/AAAA/wAAAPUAAAAcAAAAAAAAAAAAnP4NAJL9rgCR/0YAAAAAfX19w4ODg/98fHz/i4uL/4qKivwAAAD/AAAA/wAAAP8AAAD1AAAAGwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALGxsVyqqqr/mpqa/6mpqf9KSUn/AAAA5QAAAPkAAAD5AAAAhQAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADkUFBSuZ2dn/3V1df8uLi7bAAAATgBGfyQAAAA2AAAAMwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0AAADoAAAA/wAAAP8AAAD/AAAAWgC3/2AAnv3eAJ/+dgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAA/wAAAP8AAAD/AAAA/wAKDzEAnP3WAKn//wCS/OgAf/8MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIQAAANwAAADtAAAA7QAAAMAAABUMAJn9gwCe/e0Aj/2LAP//AQAAAAAAAAAA)](https://www.mdanalysis.org)

[![Anaconda-Server Badge](https://anaconda.org/conda-forge/gromacs/badges/version.svg)](https://anaconda.org/conda-forge/gromacs)


# Protein Ligand Complex MD Setup tutorial using BioExcel Building Blocks (biobb)
**Forked from the original [biobb_wf_protein-complex](https://biobb-wf-protein-complex-md-setup.readthedocs.io)**

**Based on the official [GROMACS tutorial](http://www.mdtutorials.com/gmx/complex/index.html).**


***

This tutorial aims to illustrate the process of **setting up a simulation system** containing a **protein in complex with a ligand**, step by step, using the **BioExcel Building Blocks library (biobb)**. The particular example used is the **T4 lysozyme** L99A/M102Q protein (PDB code 3HTB), in complex with the **2-propylphenol** small molecule (3-letter Code JZ4). 

***

## Settings

### Biobb modules used

* [biobb_io](https://github.com/bioexcel/biobb_io): Tools to fetch biomolecular data from public databases.
* [biobb_model](https://github.com/bioexcel/biobb_model): Tools to model macromolecular structures.
* [biobb_chemistry](https://github.com/bioexcel/biobb_chemistry): Tools to manipulate chemical data.
* [biobb_gromacs](https://github.com/bioexcel/biobb_gromacs): Tools to setup and run Molecular Dynamics simulations.
* [biobb_analysis](https://github.com/bioexcel/biobb_analysis): Tools to analyse Molecular Dynamics trajectories.
* [biobb_structure_utils](https://github.com/bioexcel/biobb_structure_utils):  Tools to modify or extract information from a PDB structure file.

### Auxiliary libraries used

* [jupyter](https://jupyter.org/): Free software, open standards, and web services for interactive computing across all programming languages.
* [nglview](http://nglviewer.org/#nglview): Jupyter/IPython widget to interactively view molecular structures and trajectories in notebooks.
* [plotly](https://plot.ly/python/offline/): Python interactive graphing library integrated in Jupyter notebooks.
* [simpletraj](https://github.com/arose/simpletraj): Lightweight coordinate-only trajectory reader based on code from GROMACS, MDAnalysis and VMD.

### Conda Installation and Launch

See: https://github.com/bioexcel/biobb_gromacs/issues/23

1. Install python packages

```console
git clone https://github.com/hariseldon99/biobb_wf_protein-complex_md_setup.git
cd biobb_wf_protein-complex_md_setup
conda env create -f conda_env/environment.yml
conda activate biobb_wf_protein-complex_md_setup
```
2. Install or load `CUDA`, *i.e.*, `CUDATOOLKIT`
2. Download and compile `GROMACS` from source with `CUDA` enabled: `TODO`
3. Install development version of `MDAnalysis`: `TODO`
4. Run

```console
jupyter-notebook biobb_wf_protein-complex_md_setup/notebooks/biobb_wf_protein-complex_md_setup.ipynb
```

## Tutorial

Click here to [view tutorial](biobb_wf_protein-complex_md_setup/notebooks/biobb_wf_protein-complex_md_setup.ipynb)


***

## Version
2024.1+0.0.1

## Copyright & Licensing
This software has been developed in the [MMB group](http://mmb.irbbarcelona.org) at the [BSC](http://www.bsc.es/) & [IRB](https://www.irbbarcelona.org/) for the [European BioExcel](http://bioexcel.eu/), funded by the European Commission (EU H2020 [823830](http://cordis.europa.eu/projects/823830), EU H2020 [675728](http://cordis.europa.eu/projects/675728)).

* (c) 2015-2024 [Barcelona Supercomputing Center](https://www.bsc.es/)
* (c) 2015-2024 [Institute for Research in Biomedicine](https://www.irbbarcelona.org/)

Licensed under the
[Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0), see the file LICENSE for details.

![](https://bioexcel.eu/wp-content/uploads/2019/04/Bioexcell_logo_1080px_transp.png "Bioexcel")

Forked by [Analabha Roy](https://sites.google.com/phys.buruniv.ac.in/home-page-of-analabha-roy/), [Department of Physics](https://sites.google.com/a/phys.buruniv.ac.in/physics/), [The University of Burdwan](https://www.buruniv.ac.in)

## TODO

Conda environment created properly, but downloading gromacs source and running the following in the build directory:

```console
cmake .. -DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX -DGMX_GPU=CUDA -DGMX_HWLOC=ON -DGMX_SIMD=AVX_512
make -j $NPROCS
make check
make install
```

yields error for cmake:

```console
CMake Error: The following variables are used in this project, but they are set to NOTFOUND.
Please set them or make sure they are set and tested correctly in the CMake files:
CUDA_cufft_LIBRARY (ADVANCED)
    linked by target "testutils" in directory /tmp/gromacs-2024.4/src/testutils
    linked by target "libgromacs" in directory /tmp/gromacs-2024.4/src/gromacs

-- Generating done (0.8s)
CMake Generate step failed.  Build files cannot be regenerated correctly.
```

Solution: [NVidia HPC toolkit is not supported](https://gromacs.bioexcel.eu/t/compiling-gromacs-2023-2-on-ms-azure-cluster/6845/1) for `GROMACS`. Need standard cuda toolkit. Run in cluster where this should work.

Also, need to figure out what environment variables to set for gromacs to work properly. The `gromacs` package in conda-forge sets the following files 
- @ [$CONDA_PREFIX/etc/conda/activate.d](conda_env/etc/conda/activate.d)
- @ [$CONDA_PREFIX/etc/conda/deactivate.d](conda_env/etc/conda/activate.d)

The files should probably should be changed to include the AVX_512 option

Background: https://guillaume-martin.github.io/saving-environment-variables-in-conda.html