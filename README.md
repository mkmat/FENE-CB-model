# FENE-CB-model

## Movies

## Logarithmic fits

We fitted the ensemble-averaged time series using the logarithmic and power-law expressions mentioned in the manuscript. Both of them involve four parameters for each quantity. The script 


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
