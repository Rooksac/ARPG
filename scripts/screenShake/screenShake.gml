//magnitude arg sets the strength of the shake
//frames arg sets the length of the shake in frames
function screenShake(magnitude, frames){
	with(global.iCamera){
		if(magnitude > shakeRemain){
			shakeMagnitude = magnitude
			shakeRemain = shakeMagnitude
			shakeLength = frames
		}
	}
}