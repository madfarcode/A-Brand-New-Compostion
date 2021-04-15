SynthDef.new(\melodic, {
	arg freq=440, atk=0.2, sus=1, prerel=0.5, rel=1, cf=1800, rq=0.2, amp = 1, detune=0.2;
	var sig, env;
	env = EnvGen.kr(Env.new([0, 1, 1,0.3, 0], [atk, sus,prerel,rel],[3,-3,-2,-1],doneAction:2));
	sig = SinOsc.ar(freq * LFNoise1.kr(0.5, detune).midiratio);
	sig = LPF.ar(sig, cf, rq);
	sig = sig * env * amp ;
	Out.ar(0, sig!2);
}).add;


///Test Zone :

Synth(\melodic);
x = Env.new([0, 1, 1,0.2, 0], [0.3, 0.7,0.8,1.5], [3,-3,-2,-1], doneAction:2).plot;