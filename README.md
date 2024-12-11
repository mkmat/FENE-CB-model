# FENE-CB-model - Supplementary Material

## Movies

| Movie | kappa | realization | t<sub>w</sub> | duration | content |
| ---- | ---- | ----  |------------------ | ----  | -----------------------------------------------------------------------   |
|[movie A](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=50-tw=1e5-copy=1-rupture.gif) |  50 | 1 | 1.28&times; 10<sup>6</sup> | 1.5&times; 10<sup>5</sup> |  filament rupture event
|[movie B](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=50-tw=1e5-copy=1-dframes=1.mp4) | 50 | 1 | 10<sup>5</sup> | 2&times; 10<sup>6</sup> |  displacements, &delta;t=5&times; 10^3|
| [movie C](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=50-tw=1e5-copy=1-dframes=5.mp4) | 50 | 1 | 10<sup>5</sup> | 2&times; 10<sup>6</sup>  | displacements, &delta;t=2.5&times; 10<sup>4</sup>|
| [movie D](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=50-tw=1e5-copy=1-dframes=50.mp4) | 50 | 1 | 10<sup>5</sup> | 2&times; 10<sup>6</sup>  | displacements, &delta;t=2.5&times; 10<sup>5</sup>|
| [movie E](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=5-init-chain-color-openr.mp4) | 5 | 11 | -10^3 | 2&times; 10^3 | droplet formation|
| [movie F](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=10-init-chain-color-openr.mp4) | 10 | 11 | -10^3 | 2&times; 10^3 | network formation|
| [movie G](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=50-init-chain-color-openr.mp4) | 50 | 11 | -10^3 | 2&times; 10^3 | network formation|
| [movie E+](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=5-tw=1e3-chain-color.mp4) | 5 | 11  | 10^3 | 2&times; 10<sup>4</sup> | coarsening dynamics|
| [movie F+](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=10-tw=1e3-chain-color.mp4) | 10 | 11 | 10^3 | 2&times; 10<sup>4</sup> | coarsening dynamics|
| [movie G+](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=50-tw=1e3-chain-color.mp4) | 50 | 11 | 10^3 | 2&times; 10<sup>4</sup> | coarsening dynamics|
| [movie H](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=5-tw=0-copy=1-chain-color-B.mp4) | 5 | 1 | 0 | 10<sup>5</sup>  | droplets and short cylinders|
| [movie I](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=5-tw=0-copy=6-chain-color.mp4) | 5 | 6 | 0 | 5&times; 10<sup>4</sup>  | percolated cylinder|
| [movie J](https://www.complexfluids.ethz.ch/MK/2024-FENE-CB/kappa=20-tw=0-copy-1-chain-color.mp4) | 20 | 1 | 0 | 5&times; 10<sup>4</sup>  | coarsening dynamics|

## Logarithmic fits

We fitted the ensemble-averaged time series using the logarithmic and power-law expressions mentioned in the manuscript. Both of them involve four parameters for each quantity. The script [FENE_CB_functions.m](FENE_CB_functions.m) offers simple functions that allow to evaluate or plot the various quantities versus time (t) and/or bending stiffness (kappa). 


      % Example: Rg (power-law fit) versus time for different kappa 
      figure;
      t = 10.^linspace(0,5,200); 
      for kappa = [10 20 30 50 75 100]
        semilogx(t,Rg_power(kappa,t),'k.-'); hold on; 
      end
      
      % Example: Rg (logarithmic fit) versus time for different kappa
      figure;
      t = 10.^linspace(0,5,200); 
      for kappa = [10 20 30 50 75 100]
        semilogx(t,Rg_logarithmic(kappa,t),'k.-'); hold on; 
      end
      
      % Example Rg (power-law fit) versus kappa at three different times
      figure;
      kappas = linspace(10,100,100);
      for t = [1e2 1e4 1e5];
        plot(kappas,Rg_power(kappas,t),'k.-'); hold on; 
      end
