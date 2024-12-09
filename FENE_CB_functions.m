function FENE_CB_functions 
close all

% mean filament diameter 
df_power       = @(kappa,t) 2.5191*(1+10*(0.6679./kappa)).*t.^(0.049554*(1+10*(-0.18709./kappa))); %  R2 = 0.9288
df_logarithmic = @(kappa,t) 1.8987*(1+10*(0.90553./kappa)) + (0.22472*(1+10*(0.21091./kappa)))*log(t); %  R2 = 0.92898

% mean filament length
Lf_power       = @(kappa,t) 6.9913*(1+10*(0.22248./kappa)).*t.^(0.053751*(1+10*(0.17802./kappa))); %  R2 = 0.66928
Lf_logarithmic = @(kappa,t) 4.9098*(1+10*(0.087762./kappa)) + (0.70121*(1+10*(0.45222./kappa)))*log(t); %  R2 = 0.6687

% mean filament length divided by mean filament diameter
Lfdivdf_power       = @(kappa,t) 2.7657*(1+10*(-0.33456./kappa)).*t.^(0.0041842*(1+10*(4.4991./kappa))); %  R2 = 0.17253
Lfdivdf_logarithmic = @(kappa,t) 2.7336*(1+10*(-0.34733./kappa)) + (0.012263*(1+10*(3.9344./kappa)))*log(t); %  R2 = 0.1721

% total length of filaments 
Ltotal_power       = @(kappa,t) 10894.6745*(1+10*(-0.78308./kappa)).*t.^(-0.12738*(1+10*(-0.11672./kappa))); %  R2 = 0.97054
Ltotal_logarithmic = @(kappa,t) 6327.4246*(1+10*(-0.7548./kappa)) + (-325.2563*(1+10*(-0.75742./kappa)))*log(t); %  R2 = 0.96964

% mean GPSD pore radius
rpore_power       = @(kappa,t) 5.7735*(1+10*(1.81./kappa)).*t.^(0.079335*(1+10*(-0.56375./kappa))); %  R2 = 0.93644
rpore_logarithmic = @(kappa,t) 1.0034*(1+10*(13.0684./kappa)) + (1.2317*(1+10*(-0.14762./kappa)))*log(t); %  R2 = 0.93653

% radius of gyration 
Rg_power       = @(kappa,t) 7.8147*(1+10*(-0.18755./kappa)).*t.^(0.0030677*(1+10*(1.8243./kappa))); %  R2 = 0.97444
Rg_logarithmic = @(kappa,t) 7.8109*(1+10*(-0.1908./kappa)) + (0.025345*(1+10*(1.4909./kappa)))*log(t); %  R2 = 0.97449

% amount of temporary bonds 
bondsC_power       = @(kappa,t) 38334.2176*(1+10*(0.73398./kappa)).*t.^(0.047486*(1+10*(-0.60306./kappa))); %  R2 = 0.99008
bondsC_logarithmic = @(kappa,t) 30520.4918*(1+10*(1.1279./kappa)) + (3209.7329*(1+10*(-0.44834./kappa)))*log(t); %  R2 = 0.99036

% total potential energy 
pe_power       = @(kappa,t) 19.1531*(1+10*(-0.077511./kappa)).*t.^(-0.0089826*(1+10*(-0.34152./kappa))); %  R2 = 0.99624
pe_logarithmic = @(kappa,t) 19.0643*(1+10*(-0.074941./kappa)) + (-0.1554*(1+10*(-0.37527./kappa)))*log(t); %  R2 = 0.9962

% negative pair energy 
negEpair_power       = @(kappa,t) 2.2466*(1+10*(0.30595./kappa)).*t.^(0.037574*(1+10*(-0.42398./kappa))); %  R2 = 0.99556
negEpair_logarithmic = @(kappa,t) 1.9845*(1+10*(0.43088./kappa)) + (0.12965*(1+10*(-0.358./kappa)))*log(t); %  R2 = 0.99575

% FENE bond energy 
ebond_power       = @(kappa,t) 20.0406*(1+10*(-0.00099038./kappa)).*t.^(-0.00012989*(1+10*(-0.46662./kappa))); %  R2 = 0.62354
ebond_logarithmic = @(kappa,t) 20.0406*(1+10*(-0.00098953./kappa)) + (-0.0025992*(1+10*(-0.46683./kappa)))*log(t); %  R2 = 0.62354

% bending angle energy 
eangle_power       = @(kappa,t) 1.0598*(1+10*(-0.54538./kappa)).*t.^(-0.030893*(1+10*(0.14354./kappa))); %  R2 = 0.98894
eangle_logarithmic = @(kappa,t) 1.009*(1+10*(-0.5542./kappa)) + (-0.023215*(1+10*(-0.48137./kappa)))*log(t); %  R2 = 0.98871

% inverse global persistence length
inverseEllp_power       = @(kappa,t) 0.005336*(1+10*(13.3645./kappa)).*t.^(-0.030944*(1+10*(0.17033./kappa))); %  R2 = 0.98893
inverseEllp_logarithmic = @(kappa,t) 0.0051511*(1+10*(13.0361./kappa)) + (-0.00010536*(1+10*(15.9799./kappa)))*log(t); %  R2 = 0.9887

% number of 1-functional skeleton beads
n1_power       = @(kappa,t) 50.9453*(1+10*(-1.1536./kappa)).*t.^(-0.087368*(1+10*(0.46424./kappa))); %  R2 = 0.077789
n1_logarithmic = @(kappa,t) 8.8877*(1+10*(-0.2931./kappa)) + (-0.41145*(1+10*(-0.23862./kappa)))*log(t); %  R2 = 0.080471

% number of 2-functional skeleton beads
n2_power       = @(kappa,t) 10940.5185*(1+10*(-0.74089./kappa)).*t.^(-0.12297*(1+10*(-0.067989./kappa))); %  R2 = 0.98277
n2_logarithmic = @(kappa,t) 6501.6935*(1+10*(-0.7253./kappa)) + (-330.5477*(1+10*(-0.72151./kappa)))*log(t); %  R2 = 0.98176

% number of 3-functional skeleton beads
n3_power       = @(kappa,t) 748.7794*(1+10*(-0.56727./kappa)).*t.^(-0.16808*(1+10*(0.076525./kappa))); %  R2 = 0.81509
n3_logarithmic = @(kappa,t) 326.6001*(1+10*(-0.74042./kappa)) + (-18.6786*(1+10*(-0.69529./kappa)))*log(t); %  R2 = 0.81411

% number of 4-functional skeleton beads
n4_power       = @(kappa,t) 229.2659*(1+10*(-0.96508./kappa)).*t.^(-0.24531*(1+10*(0.21078./kappa))); %  R2 = 0.35061
n4_logarithmic = @(kappa,t) 40.9768*(1+10*(-1.1562./kappa)) + (-2.69*(1+10*(-1.1515./kappa)))*log(t); %  R2 = 0.35812

% number of 5-functional skeleton beads
n5_power       = @(kappa,t) 125.0436*(1+10*(-1.4769./kappa)).*t.^(-0.46728*(1+10*(-2.178./kappa))); %  R2 = 0.13971
n5_logarithmic = @(kappa,t) 9.694*(1+10*(-1.6695./kappa)) + (-0.6636*(1+10*(-1.7897./kappa)))*log(t); %  R2 = 0.13454

% number of loops 
loops_power  = @(kappa,t) 572.8625*(1+10*(-0.86653./kappa)).*t.^(-0.1954*(1+10*(-0.15798./kappa))); %  R2 = 0.94139
loops_logarithmic = @(kappa,t) 210.7633*(1+10*(-0.90528./kappa)) + (-12.5745*(1+10*(-0.89738./kappa)))*log(t); %  R2 = 0.94029

% number of edges 
edges_power       = @(kappa,t) 1491.0145*(1+10*(-0.76834./kappa)).*t.^(-0.18112*(1+10*(-0.029491./kappa))); %  R2 = 0.93133
edges_logarithmic = @(kappa,t) 594.9492*(1+10*(-0.83468./kappa)) + (-34.8869*(1+10*(-0.81491./kappa)))*log(t); %  R2 = 0.9293

% mean unweighted chord length (polymer, 1-phase)
l1_power       = @(kappa,t) 3.6702*(1+10*(0.31562./kappa)).*t.^(0.03691*(1+10*(0.14567./kappa))); %  R2 = 0.98291
l1_logarithmic = @(kappa,t) 3.1707*(1+10*(0.31993./kappa)) + (0.21163*(1+10*(0.47464./kappa)))*log(t); %  R2 = 0.98316

% mean weighted chord length (polymer, 1-phase)
ell1_power       = @(kappa,t) 5.4046*(1+10*(0.28651./kappa)).*t.^(0.037348*(1+10*(0.25351./kappa))); %  R2 = 0.98445
ell1_logarithmic = @(kappa,t) 4.6452*(1+10*(0.24681./kappa)) + (0.31554*(1+10*(0.64243./kappa)))*log(t); %  R2 = 0.98473

% total filament volume 
Vf_power       = @(kappa,t) 38302.6362*(1+10*(-0.064391./kappa)).*t.^(-0.0084609*(1+10*(-0.23689./kappa))); %  R2 = 0.71836
Vf_logarithmic = @(kappa,t) 38118.4498*(1+10*(-0.061872./kappa)) + (-292.3343*(1+10*(-0.25954./kappa)))*log(t); %  R2 = 0.71841

% total filament surface area
Af_power       = @(kappa,t) 105007.5832*(1+10*(-0.53314./kappa)).*t.^(-0.078484*(1+10*(-0.055468./kappa))); %  R2 = 0.97405
Af_logarithmic = @(kappa,t) 79821.6041*(1+10*(-0.49122./kappa)) + (-3216.0019*(1+10*(-0.459./kappa)))*log(t); %  R2 = 0.9734

% bead number density inside filaments 
rhof_power       = @(kappa,t) 0.78286*(1+10*(0.068746./kappa)).*t.^(0.0084602*(1+10*(-0.23732./kappa))); %  R2 = 0.71854
rhof_logarithmic = @(kappa,t) 0.77852*(1+10*(0.072193./kappa)) + (0.0073457*(1+10*(-0.21425./kappa)))*log(t); %  R2 = 0.71848

% mean unweighted chord length (void, 0-phase)
l0_power       = @(kappa,t) 18.5663*(1+10*(0.23204./kappa)).*t.^(0.039014*(1+10*(0.39718./kappa))); %  R2 = 0.93017
l0_logarithmic = @(kappa,t) 15.2446*(1+10*(0.17129./kappa)) + (1.1756*(1+10*(0.79219./kappa)))*log(t); %  R2 = 0.93056

% mean weighted chord length (void, 0-phase)
ell0_power       = @(kappa,t) 21.9171*(1+10*(1.2714./kappa)).*t.^(0.065312*(1+10*(-0.54214./kappa))); %  R2 = 0.81847
ell0_logarithmic = @(kappa,t) 8.7192*(1+10*(4.3371./kappa)) + (3.5287*(1+10*(-0.43827./kappa)))*log(t); %  R2 = 0.81958


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
