# Supplementary Material (movies & scripts)

# Ultra-slow self-similar coarsening of physical fibrillar gels formed by semiflexible polymers 
Article: [Soft Matter, *21* (2025) 2803-2825](https://doi.org/10.1039/D4SM01479K)  (Open Access, DOI 10.1039/D4SM01479K)

Authors: [Martin Kröger](https://www.complexfluids.ethz.ch/), [Clarisse Luap](https://www.scopus.com/authid/detail.uri?authorId=6507066994&origin=resultslist), [Patrick Ilg](https://www.reading.ac.uk/maths-and-stats/staff/patrick-ilg)

Additional [Supplementary Information](https://www.rsc.org/suppdata/d4/sm/d4sm01479k/d4sm01479k1.pdf) provided by Soft Matter (methods etc.)

## Movies

If your browser does not play the movies, download them using a right-click (save link as ..). 

| Movie | &kappa; (kappa) | realization | t<sub>w</sub> | duration | content |
| ---- | ---- | ----  |------------------ | ----  | -----------------------------------------------------------------------   |
|[movie A](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=50-tw=1e5-copy=1-rupture.gif) |  50 | 1 | 1.28&times; 10<sup>6</sup> | 1.5&times; 10<sup>5</sup> |  filament rupture event
|[movie B](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=50-tw=1e5-copy=1-dframes=1.mp4) | 50 | 1 | 10<sup>5</sup> | 2&times; 10<sup>6</sup> |  displacements, &delta;t=5&times; 10^3|
| [movie C](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=50-tw=1e5-copy=1-dframes=5.mp4) | 50 | 1 | 10<sup>5</sup> | 2&times; 10<sup>6</sup>  | displacements, &delta;t=2.5&times; 10<sup>4</sup>|
| [movie D](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=50-tw=1e5-copy=1-dframes=50.mp4) | 50 | 1 | 10<sup>5</sup> | 2&times; 10<sup>6</sup>  | displacements, &delta;t=2.5&times; 10<sup>5</sup>|
| [movie E](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=5-init-chain-color-openr.mp4) | 5 | 11 | -10<sup>3</sup> | 2&times; 10<sup>3</sup> | droplet formation|
| [movie F](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=10-init-chain-color-openr.mp4) | 10 | 11 | -10<sup>3</sup> | 2&times; 10<sup>3</sup> | network formation|
| [movie G](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=50-init-chain-color-openr.mp4) | 50 | 11 | -10<sup>3</sup> | 2&times; 10<sup>3</sup> | network formation|
| [movie E+](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=5-tw=1e3-chain-color.mp4) | 5 | 11  | 10<sup>3</sup> | 2&times; 10<sup>4</sup> | coarsening dynamics|
| [movie F+](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=10-tw=1e3-chain-color.mp4) | 10 | 11 | 10<sup>3</sup> | 2&times; 10<sup>4</sup> | coarsening dynamics|
| [movie G+](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=50-tw=1e3-chain-color.mp4) | 50 | 11 | 10<sup>3</sup> | 2&times; 10<sup>4</sup> | coarsening dynamics|
| [movie H](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=5-tw=0-copy=1-chain-color-B.mp4) | 5 | 1 | 0 | 10<sup>5</sup>  | droplets and short cylinders|
| [movie I](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=5-tw=0-copy=6-chain-color.mp4) | 5 | 6 | 0 | 5&times; 10<sup>4</sup>  | percolated cylinder|
| [movie J](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=20-tw=0-copy-1-chain-color.mp4) | 20 | 1 | 0 | 5&times; 10<sup>4</sup>  | coarsening dynamics|

All movies have been created by C.L. using [Ovito](https://www.ovito.org/manual). 

## Logarithmic and power-law fits

We fitted the ensemble-averaged time series using the logarithmic and power-law expressions mentioned in the manuscript. Both of them involve four parameters for each quantity. The scripts [FENE_CB_functions.m](FENE_CB_functions.m) (<a href="https://ch.mathworks.com/" target="_blank">matlab</a>) and [FENE_CB_functions.py](FENE_CB_functions.py) (<a href="https://www.python.org/" target="_blank">python</a>) offer inline functions that allow to evaluate or plot the various quantities (described within the script) versus waiting time (t<sub>w</sub>) and/or bending stiffness (kappa). Below are rudimentary examples on how to edit and make use of the scripts. 

#### Using [matlab](https://ch.mathworks.com/), plot the radius of gyration versus waiting time for 6 different kappa values, using the logarithmic fits: 
   
      figure;
      tw = 10.^linspace(0,5,200); 
      for kappa = [10 20 30 50 75 100]; semilogx(tw,Rg_power(kappa,tw),'k.-'); hold on; end

#### Using [python](https://www.python.org/), plot the radius of gyration versus waiting time for 6 different kappa values, using the logarithmic fits:
   
      plt.figure()
      tw = np.power(10,np.linspace(0,5,200))
      for kappa in [10,20,30,50,75,100]:
          plt.semilogx(t,Rg_power(kappa,tw),'k.-')
      plt.show()

#### Using [matlab](https://ch.mathworks.com/), plot the radius of gyration versus waiting time for 6 different kappa values, using the power-law fits: 
      
      figure;
      tw = 10.^linspace(0,5,200); 
      for kappa = [10 20 30 50 75 100]; semilogx(tw,Rg_logarithmic(kappa,tw),'k.-'); hold on; end

#### Using [matlab](https://ch.mathworks.com/), plot the radius of gyration versus kappa at three different waiting times using the power-law fits: 
      
      figure;
      kappa = linspace(10,100,100);
      for tw = [1e2 1e4 1e5]; plot(kappa,Rg_power(kappa,t),'k.-'); hold on; end

#### Calculating averages, extrapolations

With the functions at hand, you can calculate time-averaged mean values to rate the effect of a chosen averaging interval on the mean values, or to extrapolate quantities to a later waiting time. As the fits are based on data for *t*<sub>w</sub> &in; [10<sup>4</sup>,10<sup>6</sup>] for &kappa; &in; {0,10,50,75} and *t*<sub>w</sub> &in; [10<sup>4</sup>,10<sup>5</sup>] for &kappa; &in; {2,5,15,20,30,40,100} the predictions far outside these regimes must be regarded as  crude estimates. For example, extrapolating the number of edges (E) to unity makes sense, while extrapolating them to zero is certainly over-stressing the fit function. 

## LAMMPS implementation 

The FENE-CB model (manuscript section 4.1.1) studied in this work is coveniently implemented in [LAMMPS](https://www.lammps.org/) via 

      variable rc equal 1.359  # cutoff distance for nonbonded pairs of beads (corresponds to E_coh = 1.4)
      variable kappa equal 10  # bending stiffness
      
      atom_style angle
      read_data myfile.data nocoeff
      mass * 1.0
      pair_style lj/cut ${rc}
      pair_modify shift yes
      pair_coeff * * 3 1.0 ${rc}
      bond_style fene
      bond_coeff * 30 1.5 1.0 1.0
      special_bonds fene
      angle_style cosine
      angle_coeff * ${kappa}

      timestep 0.005
      comm_modify cutoff 4.0
      neighbor 0.3 bin
      
      fix NVE all nve
      fix LANGEVIN all langevin 1 1 2 123456 zero yes

      # run etc .. 

where it is assumed that you have an initial configuration *myfile.data* at hand (if not, contact M.K.). The entries within the Atoms section of the data file are: id mol type x y z. The Bonds section lists the permanent intramolecular bonds. The above can serve as the header of your LAMMPS input file. 
