<?php
$usedPorts = [
	3000,
	5173,
	8000
];
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Localhost - Home</title>
	<style>
		li {
			display: flex;
			gap: 0.5rem;
		}

		.link-info {
			opacity: 0.8;
		}

		.link-online {
			color: green;
		}

		.link-offline {
			color:maroon;
		}
	</style>
</head>
<body>
	<h1>Localhost - Home</h1>
	<section>
		<h2>Test servers</h2>
		<ul>
			<?php
			foreach ($usedPorts as $port) {
				$url = "http://localhost:".$port;
				?>
				<li><a target="_blank" href="<?= $url ?>"><?= $port ?></a>
				<?php
				$handle = curl_init($url);
				curl_setopt($handle,  CURLOPT_RETURNTRANSFER, TRUE);

				/* Get the HTML or whatever is linked in $url. */
				$response = curl_exec($handle);

				/* Check for 404 (file not found). */
				$httpCode = curl_getinfo($handle, CURLINFO_HTTP_CODE);
				if($httpCode != 0 && $httpCode <= 400 ) { ?>
					<div class="link-info link-online">(open)</div>
				<?php } else { ?>
					<div class="link-info link-offline">(closed)</div>
				<?php }

				curl_close($handle);

				?>
				</li>
				<?php	}	?>
		</ul>
	</section>
	<section>
		<h2>Tools</h2>
		<ul>
			<li><a href="http://localhost/phpmyadmin/">phpMyAdmin</a></li>
		</ul>
	</section>
</body>
</html>