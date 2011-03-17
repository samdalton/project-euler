<?php
function is_prime($num) {
	for ($i = 2;$i < $num;$i++){
		if ($num % $i == 0) {
			$bool = false;
			break;
		} else {
			$bool = true;
		}
	}
	return $bool;
}

$testNum = 317584931803;
$multiples = array();
$primeMultiples = array();

//get multiples
for ($i = 1;$i < $testNum;$i++){
	if ($testNum % $i == 0) {
		if (is_prime($i)) {
			array_push($multiples, $i);
		}
	}
}

$count = count($multiples) - 1;

echo $multiples[$count];
?>