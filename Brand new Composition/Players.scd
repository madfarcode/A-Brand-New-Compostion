(1).do{
	Synth(\melodic,
		[
			\freq, (Scale.minor.degrees+64).midicps.choose,
			\amp, 0.5,
			\atk, 0.1,
			\rel, 2,
			\prerel, 0.7,
			\sus, 0.3,
			\cf, 500,
			\rq, exprand(0.1, 0.2),
			\detune,0 ,
		]
	);
};