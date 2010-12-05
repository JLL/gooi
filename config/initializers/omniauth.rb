Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'Xg3Xn3R3MN2VbwcQtfCgg', '5qpyuu4tFiJghOJBf7tWbfmjCtxDryoAl9ZuhWUYCbg'
  provider :facebook, '110662792290498', '8a369885004f36ffc0910fea762ae604'
end