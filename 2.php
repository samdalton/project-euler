<?php
$term1 = 1;
$term2 = 2;
$maxTerm = 1000000;
$answer = 2;

while ($term2 < $maxTerm) {	 
	$term3 = $term1 + $term2;	
	$term1 = $term2;
	$term2 = $term3;
	
	if ($term3 % 2 == 0)
	$answer = $answer + $term3;
}

echo $answer;

?>