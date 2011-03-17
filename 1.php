<?php
function is_multiple($num) {
	if ($num % 3 == 0 || $num % 5 == 0)
	return true;
}

//variable to hold the answer
$answer = 0;

for ($i = 1; $i <1000; $i++) {
	if (is_multiple($i))
	$answer = $answer + $i;
}

echo $answer;
?>