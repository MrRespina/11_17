function isEmpty(input) {
	return (!input.value);
}

function atLeastLetter(input, len) {
	return (input.value.length < len);
}

function isNotNumber(input) {
	return isNaN(input.value);
}