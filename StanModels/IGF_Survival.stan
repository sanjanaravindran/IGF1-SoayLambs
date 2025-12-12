data {
  int<lower=0> N; //number of data points
  array[N] int<lower=0, upper=1> Survival; //survival response
  vector[N] IGF1_sc; //igf predictor
  vector[N] SexF; // sex predictor
  int<lower=1> num_years; //number of years
  array[N] int<lower=1, upper=num_years> BirthYear; //year id
  int<lower=1> num_mums; //number of mums
  array[N] int<lower=1, upper=num_mums> MumID; //mum id
  int<lower=1> num_days; //number of days
  array[N] int<lower=1, upper=num_days> ELISARunDate; //day id
  int<lower=1> num_plates; //number of plates
  array[N] int<lower=1, upper=num_plates> PlateNumber; //plate id
}

parameters {
  real alpha; //intercept for survival~IGF + ... model
  real beta_IGF; //slope for IGF in survival~IGF + ... model
  real beta_SexF; // slope for sex in survival~IGF + ... model
  vector[num_years] t; //year intercepts
  vector[num_mums] u; //mum intercepts
  vector[num_days] v; //day intercepts
  vector[num_plates] w; //plate intercepts
  real<lower=0> sigma_t; //year sd
  real<lower=0> sigma_u; //year sd
  real<lower=0> sigma_v; //day sd 
  real<lower=0> sigma_w; //plate sd 
  real<lower=0> sigma_e1; //error sd in igf1 me model
}

transformed parameters {
  vector[N] IGF_true = IGF1_sc  - v[ELISARunDate] - w[PlateNumber]; 
}

model {
  //priors 
  sigma_e1 ~ cauchy(0,2.5);  
  sigma_t ~ cauchy(0,2.5);
  sigma_u ~ cauchy(0,2.5);
  sigma_v ~ cauchy(0,2.5);
  sigma_w ~ cauchy(0,2.5);
  
  //NCP priors
  t ~ normal(0,1);
  u ~ normal(0,1);
  v ~ normal(0,sigma_v);
  w ~ normal(0,sigma_w);
  
  //likelihood
  IGF1_sc ~ normal(v[ELISARunDate] + w[PlateNumber], sigma_e1);
  
  // likelihood
  Survival ~ bernoulli_logit(alpha + beta_IGF * IGF_true + beta_SexF * SexF +  
                    sigma_t*t[BirthYear] + sigma_u*u[MumID]);
}

generated quantities {
  vector[N] Survival_rep;
  for (i in 1:N)
    Survival_rep[i] = bernoulli_logit_rng(alpha  + beta_IGF * IGF_true[i] + beta_SexF * SexF[i] + 
                                 sigma_t*t[BirthYear[i]] + sigma_u*u[MumID[i]]);
}
